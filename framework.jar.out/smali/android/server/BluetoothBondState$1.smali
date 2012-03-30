.class Landroid/server/BluetoothBondState$1;
.super Ljava/lang/Object;
.source "BluetoothBondState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothBondState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothBondState;


# direct methods
.method constructor <init>(Landroid/server/BluetoothBondState;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 347
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 348
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Landroid/server/BluetoothBondState;->access$002(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 349
    .restart local p2
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 350
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Landroid/server/BluetoothBondState;->access$102(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 5
    .parameter "profile"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 355
    if-ne p1, v3, :cond_1

    .line 356
    iget-object v1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #getter for: Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1}, Landroid/server/BluetoothBondState;->access$000(Landroid/server/BluetoothBondState;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 358
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #getter for: Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1}, Landroid/server/BluetoothBondState;->access$000(Landroid/server/BluetoothBondState;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 359
    iget-object v1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #setter for: Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v1, v4}, Landroid/server/BluetoothBondState;->access$002(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 368
    .end local v0           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    if-ne p1, v2, :cond_0

    .line 362
    iget-object v1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #getter for: Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/server/BluetoothBondState;->access$100(Landroid/server/BluetoothBondState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 363
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 364
    .restart local v0       #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #getter for: Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/server/BluetoothBondState;->access$100(Landroid/server/BluetoothBondState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 365
    iget-object v1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #setter for: Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1, v4}, Landroid/server/BluetoothBondState;->access$102(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0
.end method
