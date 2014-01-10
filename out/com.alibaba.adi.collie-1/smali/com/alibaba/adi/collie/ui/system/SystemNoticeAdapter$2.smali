.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$2;
.super Ljava/lang/Object;
.source "SystemNoticeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->inflateView(Lcom/alibaba/adi/collie/model/SystemNoticeData;Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

.field private final synthetic val$privacyHint:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$2;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$2;->val$privacyHint:Landroid/widget/LinearLayout;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 189
    const-string v0, "system_show_guide"

    .line 190
    const/4 v1, 0x0

    .line 189
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 191
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$2;->val$privacyHint:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$2;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->fragment:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$2;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->fragment:Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;

    move-result-object v0

    new-instance v1, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter$2;->this$0:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->access$0(Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;

    .line 195
    const-string v4, "Privacy"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenAdiActivity;-><init>(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/aslide/content/BaseContentFragment;->unlockAndRun(Lcom/alibaba/adi/collie/ui/main/action/IAction;)V

    .line 197
    :cond_0
    return-void
.end method
