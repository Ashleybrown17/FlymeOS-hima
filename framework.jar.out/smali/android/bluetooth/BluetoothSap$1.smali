.class Landroid/bluetooth/BluetoothSap$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothSap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothSap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSap;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v1, "Bluetoothsap"

    const-string/jumbo v2, "onBluetoothStateChange(on) call bindService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSap;->doBind()Z

    const-string v1, "Bluetoothsap"

    const-string v2, "BluetoothSap(), bindService called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    # getter for: Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;
    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->access$000(Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/IBluetoothSap;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Bluetoothsap"

    const-string v2, "Unbinding service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    # getter for: Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->access$100(Landroid/bluetooth/BluetoothSap;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothSap;->mSapService:Landroid/bluetooth/IBluetoothSap;
    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothSap;->access$002(Landroid/bluetooth/BluetoothSap;Landroid/bluetooth/IBluetoothSap;)Landroid/bluetooth/IBluetoothSap;

    iget-object v1, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    # getter for: Landroid/bluetooth/BluetoothSap;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/bluetooth/BluetoothSap;->access$200(Landroid/bluetooth/BluetoothSap;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothSap$1;->this$0:Landroid/bluetooth/BluetoothSap;

    # getter for: Landroid/bluetooth/BluetoothSap;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Landroid/bluetooth/BluetoothSap;->access$100(Landroid/bluetooth/BluetoothSap;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Bluetoothsap"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method