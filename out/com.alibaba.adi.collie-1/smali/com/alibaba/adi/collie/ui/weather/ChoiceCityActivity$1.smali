.class Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity$1;
.super Ljava/lang/Object;
.source "ChoiceCityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 85
    const-string v0, "\u52aa\u529b\u5b9a\u4f4d\u4e2d"

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->gpsCityTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->access$0(Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity$1;->this$0:Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->gpsCityTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->access$0(Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    #calls: Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->saveCityFinish(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->access$1(Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method
