.class Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/news/NewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$news$NewsAdapter$ImageLoadStatus:[I


# instance fields
.field imageLoadingBackground:Landroid/widget/ImageView;

.field imageLoadingLayout:Landroid/view/View;

.field imageLoadingProgressBar:Landroid/widget/ImageView;

.field imageView:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field source:Landroid/widget/TextView;

.field status:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

.field summary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

.field title:Landroid/widget/TextView;

.field updateTime:Landroid/widget/TextView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$news$NewsAdapter$ImageLoadStatus()[I
    .locals 3

    .prologue
    .line 184
    sget-object v0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$news$NewsAdapter$ImageLoadStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->values()[Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->FAILED:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->LOADED:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->LOADING:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$news$NewsAdapter$ImageLoadStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/alibaba/adi/collie/ui/news/NewsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->this$0:Lcom/alibaba/adi/collie/ui/news/NewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setStatus(Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;)V
    .locals 4
    .parameter "loadStatus"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 203
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->status:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

    .line 204
    invoke-static {}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$news$NewsAdapter$ImageLoadStatus()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->status:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageView:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingProgressBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageView:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    invoke-virtual {v0, v3}, Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingProgressBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageView:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingProgressBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingBackground:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
