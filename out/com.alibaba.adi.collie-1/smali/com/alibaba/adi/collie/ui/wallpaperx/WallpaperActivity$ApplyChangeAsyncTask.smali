.class Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;
.super Landroid/os/AsyncTask;
.source "WallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplyChangeAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final RET_TOO_FEW:I = -0x2

.field private static final RET_TOO_MANY:I = -0x1


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;-><init>(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .parameter "voids"

    .prologue
    .line 345
    :try_start_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperUiEventHandler;->saveChangesToDb()V

    .line 346
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/alibaba/adi/collie/ui/wallpaperx/exp/SelectTooFewException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 348
    :goto_0
    return-object v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Lcom/alibaba/adi/collie/ui/wallpaperx/exp/SelectTooFewException;
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "integer"

    .prologue
    const/4 v3, 0x0

    .line 354
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 358
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 372
    :goto_0
    return-void

    .line 360
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->finish()V

    goto :goto_0

    .line 363
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    .line 364
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    const v2, 0x7f0a0136

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 367
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    .line 368
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    const v2, 0x7f0a013a

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 336
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 337
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$0(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;Landroid/app/ProgressDialog;)V

    .line 338
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    const v2, 0x7f0a0139

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity$ApplyChangeAsyncTask;->this$0:Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;->access$1(Lcom/alibaba/adi/collie/ui/wallpaperx/WallpaperActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 340
    return-void
.end method
