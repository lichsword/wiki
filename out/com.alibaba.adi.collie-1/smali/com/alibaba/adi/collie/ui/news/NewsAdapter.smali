.class public Lcom/alibaba/adi/collie/ui/news/NewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewsAdapter.java"

# interfaces
.implements Lorg/lichsword/util/ImageManager$ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;,
        Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final EXCLUDE_CHARS_REGEX:Ljava/lang/String; = "[\\s]"

.field private static final ITEM_DEFAULT_WIDTH:I = 0x28a


# instance fields
.field private context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/NewsData;",
            ">;"
        }
    .end annotation
.end field

.field private mImageLoadStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Lorg/lichsword/util/ImageManager;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->manager:Lorg/lichsword/util/ImageManager;

    .line 36
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->data:Ljava/util/List;

    .line 38
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->initContentData()V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/NewsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->manager:Lorg/lichsword/util/ImageManager;

    .line 42
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    .line 43
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->data:Ljava/util/List;

    .line 44
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->initContentData()V

    .line 45
    return-void
.end method

.method private initContentData()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->manager:Lorg/lichsword/util/ImageManager;

    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->manager:Lorg/lichsword/util/ImageManager;

    invoke-virtual {v0, p0}, Lorg/lichsword/util/ImageManager;->addListener(Lorg/lichsword/util/ImageManager$ImageDownloadListener;)V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->mImageLoadStatusMap:Ljava/util/Map;

    .line 51
    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/NewsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/NewsData;>;"
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->data:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->mImageLoadStatusMap:Ljava/util/Map;

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->notifyDataSetChanged()V

    .line 61
    return-void
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->mImageLoadStatusMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->mImageLoadStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 182
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/NewsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/alibaba/adi/collie/model/service/NewsData;
    .locals 1
    .parameter "position"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/model/service/NewsData;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->getItem(I)Lcom/alibaba/adi/collie/model/service/NewsData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 92
    move-object/from16 v10, p2

    .line 93
    .local v10, view:Landroid/view/View;
    const/4 v2, 0x0

    .line 94
    .local v2, holder:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;
    if-nez v10, :cond_3

    .line 95
    sget-object v11, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f03003e

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 97
    new-instance v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;

    .end local v2           #holder:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;
    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;-><init>(Lcom/alibaba/adi/collie/ui/news/NewsAdapter;)V

    .line 98
    .restart local v2       #holder:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;
    const v11, 0x7f0800ed

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 99
    const v11, 0x7f0800fb

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->source:Landroid/widget/TextView;

    .line 100
    const v11, 0x7f0800fc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->updateTime:Landroid/widget/TextView;

    .line 101
    const v11, 0x7f0800ee

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    iput-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageView:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    .line 102
    const v11, 0x7f0800ef

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingLayout:Landroid/view/View;

    .line 103
    const v11, 0x7f0800f1

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingProgressBar:Landroid/widget/ImageView;

    .line 104
    const v11, 0x7f0800f0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingBackground:Landroid/widget/ImageView;

    .line 105
    const v11, 0x7f0800fd

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 108
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-le v11, v12, :cond_0

    .line 109
    iget-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 112
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    iput v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->paddingLeft:I

    .line 113
    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    iput v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->paddingRight:I

    .line 114
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    iput v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->paddingTop:I

    .line 115
    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    iput v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->paddingBottom:I

    .line 116
    invoke-virtual {v10, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    :goto_0
    iget v12, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->paddingLeft:I

    if-nez p1, :cond_4

    const/4 v11, 0x0

    :goto_1
    iget v13, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->paddingRight:I

    .line 121
    iget v14, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->paddingBottom:I

    .line 120
    invoke-virtual {v10, v12, v11, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->getItem(I)Lcom/alibaba/adi/collie/model/service/NewsData;

    move-result-object v3

    .line 124
    .local v3, item:Lcom/alibaba/adi/collie/model/service/NewsData;
    iget-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/service/NewsData;->getTitle()Ljava/lang/String;

    move-result-object v12

    const-string v13, "[\\s]"

    const-string v14, " "

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->source:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/service/NewsData;->getSite()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/service/NewsData;->getSummary()Ljava/lang/String;

    move-result-object v11

    const-string v12, "[\\s]"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, summary:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 130
    .local v7, summaryLength:I
    iget-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    .line 131
    .local v8, summaryWidth:I
    if-nez v8, :cond_1

    .line 132
    const/16 v8, 0x28a

    .line 134
    :cond_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-le v11, v12, :cond_5

    const v4, 0x40966666

    .line 135
    .local v4, linesRatio:F
    :goto_2
    if-lez v7, :cond_6

    iget-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 136
    int-to-float v12, v8

    mul-float/2addr v12, v4

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 135
    invoke-static {v6, v11, v12, v13}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 137
    .local v0, cSummary:Ljava/lang/CharSequence;
    :goto_3
    iget-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/service/NewsData;->getFirstImage()Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, url:Ljava/lang/String;
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v5

    .line 141
    .local v5, manager:Lorg/lichsword/util/ImageManager;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 142
    const-string v11, "news"

    invoke-virtual {v5, v9, v11}, Lorg/lichsword/util/ImageManager;->isImageCached(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 144
    :try_start_0
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/MainActivity;->isCurrentNewsPage()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 145
    iget-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageView:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    const/4 v12, 0x0

    const-string v13, "news"

    invoke-virtual {v5, v11, v9, v12, v13}, Lorg/lichsword/util/ImageManager;->bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 146
    sget-object v11, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->LOADED:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

    invoke-virtual {v2, v11}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->setStatus(Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_2
    :goto_4
    iget-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->updateTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/service/NewsData;->getDisplayTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-object v10

    .line 118
    .end local v0           #cSummary:Ljava/lang/CharSequence;
    .end local v3           #item:Lcom/alibaba/adi/collie/model/service/NewsData;
    .end local v4           #linesRatio:F
    .end local v5           #manager:Lorg/lichsword/util/ImageManager;
    .end local v6           #summary:Ljava/lang/String;
    .end local v7           #summaryLength:I
    .end local v8           #summaryWidth:I
    .end local v9           #url:Ljava/lang/String;
    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #holder:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;
    check-cast v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;

    .restart local v2       #holder:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;
    goto/16 :goto_0

    .line 120
    :cond_4
    iget v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->paddingTop:I

    goto/16 :goto_1

    .line 134
    .restart local v3       #item:Lcom/alibaba/adi/collie/model/service/NewsData;
    .restart local v6       #summary:Ljava/lang/String;
    .restart local v7       #summaryLength:I
    .restart local v8       #summaryWidth:I
    :cond_5
    const v4, 0x4094cccd

    goto :goto_2

    .line 136
    .restart local v4       #linesRatio:F
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3

    .line 148
    .restart local v0       #cSummary:Ljava/lang/CharSequence;
    .restart local v5       #manager:Lorg/lichsword/util/ImageManager;
    .restart local v9       #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 151
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_7
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->mImageLoadStatusMap:Ljava/util/Map;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->mImageLoadStatusMap:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 152
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->mImageLoadStatusMap:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->FAILED:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

    if-ne v11, v12, :cond_8

    .line 153
    sget-object v11, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->FAILED:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

    invoke-virtual {v2, v11}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->setStatus(Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;)V

    goto :goto_4

    .line 156
    :cond_8
    :try_start_1
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/adi/collie/ui/MainActivity;->isCurrentNewsPage()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 157
    iget-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageView:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    const/4 v12, 0x0

    const-string v13, "news"

    invoke-virtual {v5, v11, v9, v12, v13}, Lorg/lichsword/util/ImageManager;->bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :cond_9
    :goto_5
    sget-object v11, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->LOADING:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

    invoke-virtual {v2, v11}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->setStatus(Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;)V

    goto :goto_4

    .line 159
    :catch_1
    move-exception v1

    .line 160
    .restart local v1       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    .line 165
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_a
    iget-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageLoadingLayout:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v11, v2, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ViewHolder;->imageView:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public onDownloadCompleted(Ljava/lang/String;Z)V
    .locals 2
    .parameter "url"
    .parameter "success"

    .prologue
    .line 233
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->mImageLoadStatusMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 235
    if-eqz p2, :cond_1

    .line 236
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->mImageLoadStatusMap:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->LOADED:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->notifyDataSetChanged()V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->mImageLoadStatusMap:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;->FAILED:Lcom/alibaba/adi/collie/ui/news/NewsAdapter$ImageLoadStatus;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/news/NewsAdapter;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    .line 55
    return-void
.end method
