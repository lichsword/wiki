.class Lcom/alibaba/adi/collie/ui/settings/VersionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VersionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/settings/VersionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    .line 286
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 289
    const-string v2, "extra_download_id"

    const-wide/16 v3, -0x1

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 290
    .local v0, reference:J
    invoke-static {}, Lcom/alibaba/adi/collie/business/version/AdiVersionPersistence;->getDownloadId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->finish()V

    .line 293
    :cond_0
    return-void
.end method
