.class public Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/settings/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonActivity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;
    }
.end annotation


# instance fields
.field protected back_btn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "layoutResID"

    const/high16 v3, 0x7f03

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, layoutResID:I
    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;->setContentView(I)V

    .line 180
    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/PhoneUtil;->disableHardwareAcceleration(Landroid/view/View;)V

    .line 181
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/PhoneUtil;->disableHardwareAcceleration(Landroid/view/View;)V

    .line 183
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    new-instance v1, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;-><init>(Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "filename"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    return-void
.end method
