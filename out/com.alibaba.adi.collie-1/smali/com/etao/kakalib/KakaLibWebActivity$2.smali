.class Lcom/etao/kakalib/KakaLibWebActivity$2;
.super Ljava/lang/Object;
.source "KakaLibWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/KakaLibWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/KakaLibWebActivity;

.field private final synthetic val$backButtonId:I

.field private final synthetic val$forWardButton:Landroid/view/View;

.field private final synthetic val$forwardButtonID:I


# direct methods
.method constructor <init>(Lcom/etao/kakalib/KakaLibWebActivity;IILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->this$0:Lcom/etao/kakalib/KakaLibWebActivity;

    iput p2, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->val$backButtonId:I

    iput p3, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->val$forwardButtonID:I

    iput-object p4, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->val$forWardButton:Landroid/view/View;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->val$backButtonId:I

    if-ne v0, v1, :cond_2

    .line 49
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->this$0:Lcom/etao/kakalib/KakaLibWebActivity;

    #getter for: Lcom/etao/kakalib/KakaLibWebActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/etao/kakalib/KakaLibWebActivity;->access$0(Lcom/etao/kakalib/KakaLibWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->this$0:Lcom/etao/kakalib/KakaLibWebActivity;

    #getter for: Lcom/etao/kakalib/KakaLibWebActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/etao/kakalib/KakaLibWebActivity;->access$0(Lcom/etao/kakalib/KakaLibWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 60
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->this$0:Lcom/etao/kakalib/KakaLibWebActivity;

    #getter for: Lcom/etao/kakalib/KakaLibWebActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/etao/kakalib/KakaLibWebActivity;->access$0(Lcom/etao/kakalib/KakaLibWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-nez v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->val$forWardButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 65
    :goto_1
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->this$0:Lcom/etao/kakalib/KakaLibWebActivity;

    invoke-virtual {v0}, Lcom/etao/kakalib/KakaLibWebActivity;->finish()V

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->val$forwardButtonID:I

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->this$0:Lcom/etao/kakalib/KakaLibWebActivity;

    #getter for: Lcom/etao/kakalib/KakaLibWebActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/etao/kakalib/KakaLibWebActivity;->access$0(Lcom/etao/kakalib/KakaLibWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->this$0:Lcom/etao/kakalib/KakaLibWebActivity;

    #getter for: Lcom/etao/kakalib/KakaLibWebActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/etao/kakalib/KakaLibWebActivity;->access$0(Lcom/etao/kakalib/KakaLibWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/etao/kakalib/KakaLibWebActivity$2;->val$forWardButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method
