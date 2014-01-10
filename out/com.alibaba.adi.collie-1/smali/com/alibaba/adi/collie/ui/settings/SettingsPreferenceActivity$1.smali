.class Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$1;
.super Ljava/lang/Object;
.source "SettingsPreferenceActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "compoundButton"
    .parameter "isChecked"

    .prologue
    .line 144
    if-eqz p2, :cond_0

    .line 145
    const-string v0, "ShowNotificationBar"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;

    #calls: Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->updateStatusBarDesc()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;->access$1(Lcom/alibaba/adi/collie/ui/settings/SettingsPreferenceActivity;)V

    .line 150
    const-string v0, "show_statusbar"

    invoke-static {v0, p2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 151
    return-void

    .line 147
    :cond_0
    const-string v0, "HideNotificationBar"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method
