.class public abstract Landroid/bluetooth/IBluetoothThermometerServices$Stub;
.super Landroid/os/Binder;
.source "IBluetoothThermometerServices.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothThermometerServices;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothThermometerServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothThermometerServices$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothThermometerServices"

.field static final TRANSACTION_clearNotifyIndicate:I = 0x7

.field static final TRANSACTION_closeThermometerService:I = 0x8

.field static final TRANSACTION_getServiceName:I = 0x2

.field static final TRANSACTION_notifyIndicateValue:I = 0x6

.field static final TRANSACTION_readCharacteristicsValue:I = 0x3

.field static final TRANSACTION_readClientCharConf:I = 0x4

.field static final TRANSACTION_startThermometerService:I = 0x1

.field static final TRANSACTION_writeCharacteristicsValue:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.bluetooth.IBluetoothThermometerServices"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothThermometerServices$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothThermometerServices;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.bluetooth.IBluetoothThermometerServices"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothThermometerServices;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/bluetooth/IBluetoothThermometerServices;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothThermometerServices$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothThermometerServices$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v4, "android.bluetooth.IBluetoothThermometerServices"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "android.bluetooth.IBluetoothThermometerServices"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 50
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 56
    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 57
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 63
    .local v1, _arg1:Landroid/os/ParcelUuid;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/bluetooth/IBluetoothThermometerCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothThermometerCallBack;

    move-result-object v2

    .line 64
    .local v2, _arg2:Landroid/bluetooth/IBluetoothThermometerCallBack;
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetoothThermometerServices$Stub;->startThermometerService(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothThermometerCallBack;)Z

    move-result v3

    .line 65
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    .end local v2           #_arg2:Landroid/bluetooth/IBluetoothThermometerCallBack;
    .end local v3           #_result:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1

    .line 60
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_2

    .line 71
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_2
    const-string v4, "android.bluetooth.IBluetoothThermometerServices"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 79
    .local v0, _arg0:Landroid/os/ParcelUuid;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothThermometerServices$Stub;->getServiceName(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    .end local v3           #_result:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_3

    .line 86
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_3
    const-string v4, "android.bluetooth.IBluetoothThermometerServices"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 89
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 94
    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothThermometerServices$Stub;->readCharacteristicsValue(Landroid/os/ParcelUuid;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_4

    .line 100
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_4
    const-string v4, "android.bluetooth.IBluetoothThermometerServices"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 103
    sget-object v4, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 108
    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothThermometerServices$Stub;->readClientCharConf(Landroid/os/ParcelUuid;)I

    move-result v3

    .line 109
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 106
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    .end local v3           #_result:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_5

    .line 115
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_5
    const-string v6, "android.bluetooth.IBluetoothThermometerServices"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 118
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 124
    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothThermometerServices$Stub;->writeCharacteristicsValue(Landroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result v3

    .line 126
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v3, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_6

    .line 132
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_6
    const-string v6, "android.bluetooth.IBluetoothThermometerServices"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 135
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 140
    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothThermometerServices$Stub;->notifyIndicateValue(Landroid/os/ParcelUuid;)Z

    move-result v3

    .line 141
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v3, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    .end local v3           #_result:Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_7

    .line 147
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_7
    const-string v6, "android.bluetooth.IBluetoothThermometerServices"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 150
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 155
    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    :goto_8
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothThermometerServices$Stub;->clearNotifyIndicate(Landroid/os/ParcelUuid;)Z

    move-result v3

    .line 156
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v3, :cond_a

    move v4, v5

    :cond_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    .end local v3           #_result:Z
    :cond_b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_8

    .line 162
    .end local v0           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_8
    const-string v6, "android.bluetooth.IBluetoothThermometerServices"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 165
    sget-object v6, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 171
    .local v0, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    .line 172
    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 177
    .local v1, _arg1:Landroid/os/ParcelUuid;
    :goto_a
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothThermometerServices$Stub;->closeThermometerService(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    move-result v3

    .line 178
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v3, :cond_c

    move v4, v5

    :cond_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v0           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #_arg1:Landroid/os/ParcelUuid;
    .end local v3           #_result:Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .line 175
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_a

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
