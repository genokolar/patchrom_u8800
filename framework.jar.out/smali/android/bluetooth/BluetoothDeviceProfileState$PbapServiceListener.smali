.class Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothPbap$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 2
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Landroid/bluetooth/BluetoothPbap;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/bluetooth/BluetoothPbap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1602(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;

    .line 307
    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 310
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x1

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapServiceConnected:Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1802(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 311
    monitor-exit v1

    .line 312
    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapServiceConnected:Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1802(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
