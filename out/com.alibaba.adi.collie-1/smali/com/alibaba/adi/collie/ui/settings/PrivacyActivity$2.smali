.class Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity$2;
.super Ljava/lang/Object;
.source "PrivacyActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity$2;->this$0:Lcom/alibaba/adi/collie/ui/settings/PrivacyActivity;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 47
    if-eqz p2, :cond_0

    .line 48
    const-string v0, "OpenSixinShow"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 52
    :goto_0
    const-string v0, "adi_lock_privacy_weibo_key"

    invoke-static {v0, p2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 54
    return-void

    .line 50
    :cond_0
    const-string v0, "CloseSixinShow"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method
