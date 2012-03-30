.class Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
.super Ljava/lang/Object;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService$ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BtPolicyCallback"
.end annotation


# instance fields
.field mCallback:Landroid/bluetooth/IBluetoothCallback;

.field mCurrentAmpPolicy:I

.field mDesiredAmpPolicy:I

.field mHandle:I

.field final synthetic this$1:Landroid/server/BluetoothService$ConnectionManager;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService$ConnectionManager;Landroid/bluetooth/IBluetoothCallback;I)V
    .locals 4
    .parameter
    .parameter "newCallback"
    .parameter "newDesiredAmpPolicy"

    .prologue
    const/4 v1, 0x0

    .line 968
    iput-object p1, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->this$1:Landroid/server/BluetoothService$ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    iput v1, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mDesiredAmpPolicy:I

    .line 955
    iput v1, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I

    .line 956
    iput v1, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    .line 969
    iput-object p2, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCallback:Landroid/bluetooth/IBluetoothCallback;

    .line 970
    #calls: Landroid/server/BluetoothService$ConnectionManager;->validateAmpPolicy(I)I
    invoke-static {p1, p3}, Landroid/server/BluetoothService$ConnectionManager;->access$500(Landroid/server/BluetoothService$ConnectionManager;I)I

    move-result v1

    iput v1, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mDesiredAmpPolicy:I

    .line 971
    invoke-virtual {p1, p3}, Landroid/server/BluetoothService$ConnectionManager;->getEffectiveAmpPolicy(I)I

    move-result v1

    iput v1, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I

    .line 975
    :try_start_0
    #getter for: Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandlesAvailable:Ljava/util/LinkedList;
    invoke-static {p1}, Landroid/server/BluetoothService$ConnectionManager;->access$400(Landroid/server/BluetoothService$ConnectionManager;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    .line 976
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-using handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to track BT policy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :goto_0
    return-void

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, e:Ljava/util/NoSuchElementException;
    #getter for: Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I
    invoke-static {p1}, Landroid/server/BluetoothService$ConnectionManager;->access$600(Landroid/server/BluetoothService$ConnectionManager;)I

    move-result v1

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_0

    .line 979
    invoke-static {p1}, Landroid/server/BluetoothService$ConnectionManager;->access$604(Landroid/server/BluetoothService$ConnectionManager;)I

    move-result v1

    iput v1, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    .line 980
    const-string v1, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocating new handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to track BT policy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 982
    :cond_0
    const-string v1, "BluetoothService"

    const-string v2, "Trouble finding open handle to track BT policy!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method getHandle()I
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    return v0
.end method

.method removeHandle(I)Z
    .locals 3
    .parameter "handle"

    .prologue
    .line 959
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deallocating handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to track BT policy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v0, 0x0

    iput v0, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    .line 961
    iget-object v0, p0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->this$1:Landroid/server/BluetoothService$ConnectionManager;

    #getter for: Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandlesAvailable:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/server/BluetoothService$ConnectionManager;->access$400(Landroid/server/BluetoothService$ConnectionManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
