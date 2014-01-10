.class Lcom/etao/kakalib/util/KaKaLibUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "KaKaLibUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/util/KaKaLibUtils;->setTextViewFilterUrl(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$requestURLStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/util/KaKaLibUtils$1;->val$requestURLStr:Ljava/lang/String;

    iput-object p2, p0, Lcom/etao/kakalib/util/KaKaLibUtils$1;->val$context:Landroid/content/Context;

    .line 461
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "widget"

    .prologue
    .line 471
    const-string v1, "cm_pp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clickable span: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/etao/kakalib/util/KaKaLibUtils$1;->val$requestURLStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etao/kakalib/util/KakaLibLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/etao/kakalib/util/KaKaLibUtils$1;->val$requestURLStr:Ljava/lang/String;

    .line 473
    .local v0, tempUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/etao/kakalib/util/KaKaLibUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/etao/kakalib/util/KaKaLibUtils;->openAnUrlByNativeBrowserActivity(Landroid/content/Context;Ljava/lang/String;)Z

    .line 474
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 465
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 467
    return-void
.end method
