.class final Lcom/android/server/backup/BackupManagerService$BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$BootCompleteReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$BootCompleteReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$BootCompleteReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/backup/BackupManagerService;->mBootComplete:Z
    invoke-static {v1, v2}, Lcom/android/server/backup/BackupManagerService;->access$3302(Lcom/android/server/backup/BackupManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$BootCompleteReceiver;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->notifyBackupEnabled()V
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->access$3400(Lcom/android/server/backup/BackupManagerService;)V

    :cond_0
    return-void
.end method