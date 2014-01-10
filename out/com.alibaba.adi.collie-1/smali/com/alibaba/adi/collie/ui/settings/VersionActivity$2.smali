.class Lcom/alibaba/adi/collie/ui/settings/VersionActivity$2;
.super Ljava/lang/Object;
.source "VersionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->setUiStatus()V
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
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 127
    const-string v0, "UpdateApp"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    #calls: Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->onUpgradeButtonClicked_afterApi9()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->access$5(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/VersionActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/VersionActivity;

    #calls: Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->setUiStatus()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/settings/VersionActivity;->access$6(Lcom/alibaba/adi/collie/ui/settings/VersionActivity;)V

    .line 131
    return-void
.end method
