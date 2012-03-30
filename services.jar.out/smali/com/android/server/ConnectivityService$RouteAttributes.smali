.class Lcom/android/server/ConnectivityService$RouteAttributes;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RouteAttributes"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;

.field public v4TableId:I

.field public v6TableId:I


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 1
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$004()I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->v4TableId:I

    .line 355
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$004()I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$RouteAttributes;->v6TableId:I

    .line 356
    return-void
.end method
