.class Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$1;
.super Ljava/lang/Object;
.source "LockChooseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 30
    const-string v0, "SlideUnlock"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 31
    const-string v0, "lock_type"

    sget-object v1, Lcom/alibaba/adi/collie/model/AdiConstants;->LOCK_NONE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/settings/LockChooseActivity;->finish()V

    .line 36
    return-void
.end method
