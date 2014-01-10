.class Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "JokeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$joke$JokeAdapter$ImageLoadStatus:[I


# instance fields
.field content:Landroid/widget/TextView;

.field image:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

.field imageLayout:Landroid/widget/LinearLayout;

.field imageLoadingBackground:Landroid/widget/ImageView;

.field imageLoadingLayout:Landroid/view/View;

.field imageLoadingProgressBar:Landroid/widget/ImageView;

.field jokeLayout:Landroid/widget/LinearLayout;

.field loadingStatus:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$ui$joke$JokeAdapter$ImageLoadStatus()[I
    .locals 3

    .prologue
    .line 197
    sget-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$joke$JokeAdapter$ImageLoadStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->values()[Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->FAILED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->LOADED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->LOADING:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$joke$JokeAdapter$ImageLoadStatus:[I

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

.method constructor <init>(Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->this$0:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setStatus(Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;)V
    .locals 4
    .parameter "status"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 218
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->loadingStatus:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    .line 219
    invoke-static {}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->$SWITCH_TABLE$com$alibaba$adi$collie$ui$joke$JokeAdapter$ImageLoadStatus()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLoadingProgressBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLoadingBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->image:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    invoke-virtual {v0, v3}, Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;->setVisibility(I)V

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLoadingBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->image:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;->setVisibility(I)V

    goto :goto_0

    .line 232
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLoadingProgressBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLoadingBackground:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->image:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    invoke-virtual {v0, v3}, Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;->setVisibility(I)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
