.class Landroid/server/BluetoothService$Reaper;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reaper"
.end annotation


# instance fields
.field mHandle:I

.field mPid:I

.field mType:I

.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;II)V
    .locals 0
    .parameter
    .parameter "pid"
    .parameter "type"

    .prologue
    .line 2264
    iput-object p1, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2265
    iput p2, p0, Landroid/server/BluetoothService$Reaper;->mPid:I

    .line 2266
    iput p3, p0, Landroid/server/BluetoothService$Reaper;->mType:I

    .line 2267
    return-void
.end method

.method constructor <init>(Landroid/server/BluetoothService;III)V
    .locals 0
    .parameter
    .parameter "handle"
    .parameter "pid"
    .parameter "type"

    .prologue
    .line 2258
    iput-object p1, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2259
    iput p3, p0, Landroid/server/BluetoothService$Reaper;->mPid:I

    .line 2260
    iput p2, p0, Landroid/server/BluetoothService$Reaper;->mHandle:I

    .line 2261
    iput p4, p0, Landroid/server/BluetoothService$Reaper;->mType:I

    .line 2262
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 2271
    iget-object v1, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    monitor-enter v1

    .line 2272
    :try_start_0
    const-string v0, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracked app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/server/BluetoothService$Reaper;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/server/BluetoothService$Reaper;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    iget v0, p0, Landroid/server/BluetoothService$Reaper;->mType:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 2274
    iget-object v0, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    iget v2, p0, Landroid/server/BluetoothService$Reaper;->mHandle:I

    iget v3, p0, Landroid/server/BluetoothService$Reaper;->mPid:I

    #calls: Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V
    invoke-static {v0, v2, v3}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;II)V

    .line 2278
    :cond_0
    :goto_0
    monitor-exit v1

    .line 2279
    return-void

    .line 2275
    :cond_1
    iget v0, p0, Landroid/server/BluetoothService$Reaper;->mType:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 2276
    iget-object v0, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mStateChangeTracker:Ljava/util/Map;
    invoke-static {v0}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Landroid/server/BluetoothService$Reaper;->mPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
