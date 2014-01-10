.class Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;
.super Landroid/os/AsyncTask;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTxtTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;->this$1:Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;-><init>(Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filenames"

    .prologue
    .line 153
    array-length v2, p1

    if-nez v2, :cond_0

    .line 154
    const/4 v2, 0x0

    .line 160
    :goto_0
    return-object v2

    .line 156
    :cond_0
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 158
    .local v1, f:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/adi/collie/util/FileUtil;->readAssetFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;->this$1:Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;

    const v3, 0x7f0a018c

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity$LoadTxtTask;->this$1:Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$CommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .end local v0           #view:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
