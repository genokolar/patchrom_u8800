.class Landroid/webkit/WebViewCore$WebCoreThread$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$WebCoreThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore$WebCoreThread;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$WebCoreThread;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 735
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 786
    :goto_0
    return-void

    .line 737
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebViewCore;

    .line 738
    .local v0, core:Landroid/webkit/WebViewCore;
    #calls: Landroid/webkit/WebViewCore;->initialize()V
    invoke-static {v0}, Landroid/webkit/WebViewCore;->access$500(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 743
    .end local v0           #core:Landroid/webkit/WebViewCore;
    :sswitch_1
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 748
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$600()Lorg/codeaurora/Performance;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 749
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$600()Lorg/codeaurora/Performance;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v4, v2}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    goto :goto_0

    .line 753
    :sswitch_2
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 757
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$600()Lorg/codeaurora/Performance;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 758
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$600()Lorg/codeaurora/Performance;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    goto :goto_0

    .line 763
    :sswitch_3
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_0

    .line 764
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 767
    :cond_0
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :sswitch_4
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_1

    .line 772
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 775
    :cond_1
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->removePackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 779
    :sswitch_5
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_2

    .line 780
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 783
    :cond_2
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyProperties;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->updateProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .line 735
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xb9 -> :sswitch_3
        0xba -> :sswitch_4
        0xc1 -> :sswitch_5
    .end sparse-switch
.end method
