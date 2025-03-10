import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/views/widgets/components/full_screen_loader.dart';
import '../../../theme/app_color.dart';

class CustomScaffold extends StatefulWidget {
  final Widget body;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final bool? isLoading;
  final bool? showAppBar;

  final Widget? customLoader;
  final bool? resizeToBottomInset;

  final Future<bool> Function()? onWillPop;
  final Widget? floatingActionButton;

  const CustomScaffold(
      {super.key,
      required this.body,
      this.scaffoldKey,
      this.appBar,
      this.backgroundColor,
      this.isLoading = false,
      this.showAppBar = true,
      this.customLoader,
      this.resizeToBottomInset,
      this.onWillPop,
      this.floatingActionButton});

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: widget.isLoading == true ? false : true,
      child: Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: widget.resizeToBottomInset,
            key: widget.scaffoldKey ?? scaffoldKey,
            appBar: widget.showAppBar == true
                ? widget.appBar ??
                    PreferredSize(
                        preferredSize: const Size.fromHeight(60),
                        child: AppBar())
                : null,
            backgroundColor: widget.backgroundColor ?? AppColor().white,
            body: widget.body,
            floatingActionButton: widget.floatingActionButton,
          ),
          if (widget.isLoading == true)
            widget.customLoader == null
                ? const FullScreenLoader()
                : widget.customLoader ?? Container()
        ],
      ),
    );
  }
}
