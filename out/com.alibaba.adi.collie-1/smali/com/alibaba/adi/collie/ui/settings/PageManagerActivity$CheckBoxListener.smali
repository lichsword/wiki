.class Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;
.super Ljava/lang/Object;
.source "PageManagerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;->this$0:Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;-><init>(Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity$CheckBoxListener;->this$0:Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;

    const/4 v1, 0x1

    #setter for: Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->mChanged:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;->access$0(Lcom/alibaba/adi/collie/ui/settings/PageManagerActivity;Z)V

    .line 75
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    :pswitch_0
    return-void

    .line 77
    :pswitch_1
    if-eqz p2, :cond_0

    .line 78
    const-string v0, "OpenAliService"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 82
    :goto_1
    const-string v0, "adi_lock_enable_taobao"

    invoke-static {v0, p2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    goto :goto_0

    .line 80
    :cond_0
    const-string v0, "CloseAliService"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :pswitch_2
    if-eqz p2, :cond_1

    .line 94
    const-string v0, "OpenNews"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 98
    :goto_2
    const-string v0, "adi_lock_enable_news"

    invoke-static {v0, p2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    goto :goto_0

    .line 96
    :cond_1
    const-string v0, "CloseNews"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_2

    .line 101
    :pswitch_3
    if-eqz p2, :cond_2

    .line 102
    const-string v0, "OpenJoke"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 106
    :goto_3
    const-string v0, "adi_lock_enable_joke"

    invoke-static {v0, p2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    goto :goto_0

    .line 104
    :cond_2
    const-string v0, "CloseJoke"

    invoke-static {v0}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    goto :goto_3

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x7f08008c
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
