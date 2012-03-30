.class Landroid/server/BluetoothEventLoop$1;
.super Landroid/os/Handler;
.source "BluetoothEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;


# direct methods
.method constructor <init>(Landroid/server/BluetoothEventLoop;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, address:Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 96
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 97
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Landroid/server/BluetoothService;->setPairingConfirmation(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, devices:[Ljava/lang/String;
    array-length v3, v1

    if-eqz v3, :cond_0

    .line 106
    array-length v3, v1

    if-le v3, v5, :cond_1

    .line 107
    const-string v3, "BluetoothEventLoop"

    const-string v4, " There is more than one device in the Bonding State"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_1
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 111
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0x8

    invoke-virtual {v3, v0, v4, v5}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_0

    .line 116
    .end local v1           #devices:[Ljava/lang/String;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 117
    .restart local v0       #address:Ljava/lang/String;
    const-string v3, "BluetoothEventLoop"

    const-string v4, "Cancelling bond process"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->cancelBondProcess(Ljava/lang/String;)Z

    goto :goto_0

    .line 121
    :pswitch_3
    const-string v3, "BluetoothEventLoop"

    const-string v4, "SAP user Authorization timeout"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$100(Landroid/server/BluetoothEventLoop;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
