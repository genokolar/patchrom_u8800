.class Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;
.super Landroid/bluetooth/IBluetoothCallback$Stub;
.source "BluetoothSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmpPolicyHelper"
.end annotation


# instance fields
.field private mHandle:I

.field private final service:Landroid/bluetooth/IBluetooth;

.field final synthetic this$0:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;I)V
    .locals 3
    .parameter
    .parameter "initialPolicy"

    .prologue
    .line 489
    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->this$0:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothCallback$Stub;-><init>()V

    .line 487
    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->mHandle:I

    .line 490
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->service:Landroid/bluetooth/IBluetooth;

    .line 493
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->service:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p0, p2}, Landroid/bluetooth/IBluetooth;->registerEl2capConnection(Landroid/bluetooth/IBluetoothCallback;I)I

    move-result v1

    iput v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->mHandle:I

    .line 497
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->service:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p2}, Landroid/bluetooth/IBluetooth;->getEffectiveAmpPolicy(I)I

    move-result v1

    #calls: Landroid/bluetooth/BluetoothSocket;->setAmpPolicyNative(I)V
    invoke-static {p1, v1}, Landroid/bluetooth/BluetoothSocket;->access$100(Landroid/bluetooth/BluetoothSocket;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 503
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSocket"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 500
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 501
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothSocket"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 485
    iget v0, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->mHandle:I

    return v0
.end method


# virtual methods
.method public declared-synchronized deregister()V
    .locals 3

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->service:Landroid/bluetooth/IBluetooth;

    iget v2, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->mHandle:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->deregisterEl2capConnection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    monitor-exit p0

    return-void

    .line 508
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothSocket"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 507
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onAmpPolicyChange(I)V
    .locals 3
    .parameter "newPolicy"

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSocket$AmpPolicyHelper;->this$0:Landroid/bluetooth/BluetoothSocket;

    #calls: Landroid/bluetooth/BluetoothSocket;->setAmpPolicyNative(I)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothSocket;->access$100(Landroid/bluetooth/BluetoothSocket;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    monitor-exit p0

    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v1, "BluetoothSocket"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 514
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onRfcommChannelFound(I)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 522
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
