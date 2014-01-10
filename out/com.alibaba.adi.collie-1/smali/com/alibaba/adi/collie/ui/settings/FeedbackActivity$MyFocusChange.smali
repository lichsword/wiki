.class Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyFocusChange;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyFocusChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyFocusChange;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity$MyFocusChange;->this$0:Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/settings/FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 200
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p2, :cond_0

    .line 201
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
