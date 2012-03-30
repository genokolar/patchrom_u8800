.class Landroid/webkit/WebViewCore$WebCoreThread;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebCoreThread"
.end annotation


# static fields
.field private static final INITIALIZE:I = 0x0

.field private static final MIN_FREQ_DURING_SCROLLING:I = 0xa

.field private static final REDUCE_PRIORITY:I = 0x1

.field private static final RESUME_PRIORITY:I = 0x2

.field private static mPerf:Lorg/codeaurora/Performance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 725
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Landroid/webkit/WebViewCore$WebCoreThread;->mPerf:Lorg/codeaurora/Performance;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewCore$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 720
    invoke-direct {p0}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>()V

    return-void
.end method

.method static synthetic access$600()Lorg/codeaurora/Performance;
    .locals 1

    .prologue
    .line 720
    sget-object v0, Landroid/webkit/WebViewCore$WebCoreThread;->mPerf:Lorg/codeaurora/Performance;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 729
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 730
    invoke-static {}, Landroid/webkit/WebViewCore;->access$400()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 731
    const-class v1, Landroid/webkit/WebViewCore;

    monitor-enter v1

    .line 732
    :try_start_0
    new-instance v0, Landroid/webkit/WebViewCore$WebCoreThread$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewCore$WebCoreThread$1;-><init>(Landroid/webkit/WebViewCore$WebCoreThread;)V

    invoke-static {v0}, Landroid/webkit/WebViewCore;->access$402(Landroid/os/Handler;)Landroid/os/Handler;

    .line 788
    const-class v0, Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 789
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 791
    return-void

    .line 789
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
