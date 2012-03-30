.class public interface abstract Landroid/bluetooth/IBluetoothThermometerCallBack;
.super Ljava/lang/Object;
.source "IBluetoothThermometerCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothThermometerCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendResult(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
