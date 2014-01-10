.class public Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;
.super Landroid/widget/BaseAdapter;
.source "TaobaoLogisticsAdapter.java"

# interfaces
.implements Lorg/lichsword/util/ImageManager$ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final SAVE_LIMIT:J = 0xfL

.field public static final TAO_DIR:Ljava/lang/String; = "tao"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoTrackingData;",
            ">;"
        }
    .end annotation
.end field

.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private manager:Lorg/lichsword/util/ImageManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->manager:Lorg/lichsword/util/ImageManager;

    .line 32
    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->initContentData()V

    .line 36
    return-void
.end method

.method private fillViewHodler(Lcom/alibaba/adi/collie/model/service/TaoTrackingData;Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;)V
    .locals 6
    .parameter "item"
    .parameter "holder"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->getItems()Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoItem;>;"
    iget-object v1, p2, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->setTaoItemView(Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 122
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->getTotalItems()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_1

    .line 123
    iget-object v1, p2, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->ellipsis:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :goto_0
    iget-object v1, p2, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->logistics_detail:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->getPublishTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 128
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->getLastTransitSteps()Lcom/alibaba/adi/collie/model/service/TaoTransitStep;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/service/TaoTransitStep;->getStatusDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->isNew()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p2, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->taobao_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    :goto_1
    iget-object v1, p2, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->package_number:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5305\u88f9\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->getTotalItems()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\u5b9d\u8d1d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .end local v0           #items:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoItem;>;"
    :cond_0
    return-void

    .line 125
    .restart local v0       #items:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoItem;>;"
    :cond_1
    iget-object v1, p2, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->ellipsis:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v1, p2, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->taobao_new:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private initContentData()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->manager:Lorg/lichsword/util/ImageManager;

    .line 40
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    const v1, 0x7f0200a5

    invoke-static {v0, v1}, Lorg/lichsword/util/ImageUtil;->createDrawableFromResId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->manager:Lorg/lichsword/util/ImageManager;

    invoke-virtual {v0, p0}, Lorg/lichsword/util/ImageManager;->addListener(Lorg/lichsword/util/ImageManager$ImageDownloadListener;)V

    .line 42
    return-void
.end method

.method private setTaoItemView(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 12
    .parameter
    .parameter "contentView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoItem;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, taoList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoItem;>;"
    const/4 v11, 0x0

    const v10, 0x7f0800f2

    const v9, 0x7f080023

    const v8, 0x7f030045

    const/4 v6, 0x0

    .line 157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 158
    .local v2, listSize:I
    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 161
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 175
    .end local v1           #k:I
    :goto_1
    return-void

    .line 162
    .restart local v1       #k:I
    :cond_0
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v3, v8, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, contentItem:Landroid/view/View;
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/adi/collie/model/service/TaoItem;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/service/TaoItem;->getAuctionTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->manager:Lorg/lichsword/util/ImageManager;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/adi/collie/model/service/TaoItem;

    .line 165
    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/service/TaoItem;->getAuctionPictUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    const-string v7, "tao"

    .line 164
    invoke-virtual {v5, v3, v4, v6, v7}, Lorg/lichsword/util/ImageManager;->bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v0           #contentItem:Landroid/view/View;
    .end local v1           #k:I
    :cond_1
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v3, v8, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 170
    .restart local v0       #contentItem:Landroid/view/View;
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/adi/collie/model/service/TaoItem;

    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/service/TaoItem;->getAuctionTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->manager:Lorg/lichsword/util/ImageManager;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/adi/collie/model/service/TaoItem;

    .line 172
    invoke-virtual {v4}, Lcom/alibaba/adi/collie/model/service/TaoItem;->getAuctionPictUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    const-string v7, "tao"

    .line 171
    invoke-virtual {v5, v3, v4, v6, v7}, Lorg/lichsword/util/ImageManager;->bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 72
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
            "Lcom/alibaba/adi/collie/model/service/TaoTrackingData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/alibaba/adi/collie/model/service/TaoTrackingData;
    .locals 1
    .parameter "position"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;

    .line 81
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
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->getItem(I)Lcom/alibaba/adi/collie/model/service/TaoTrackingData;

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
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 92
    move-object v2, p2

    .line 93
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 94
    .local v0, holder:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->getItem(I)Lcom/alibaba/adi/collie/model/service/TaoTrackingData;

    move-result-object v1

    .line 95
    .local v1, item:Lcom/alibaba/adi/collie/model/service/TaoTrackingData;
    if-nez v2, :cond_0

    .line 96
    sget-object v3, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030044

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 97
    new-instance v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;

    .end local v0           #holder:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;-><init>(Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;)V

    .line 98
    .restart local v0       #holder:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;
    const v3, 0x7f08010a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->package_number:Landroid/widget/TextView;

    .line 99
    const v3, 0x7f0800f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->mContainer:Landroid/widget/LinearLayout;

    .line 100
    const v3, 0x7f08010c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->ellipsis:Landroid/widget/TextView;

    .line 101
    const v3, 0x7f08010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->logistics_detail:Landroid/widget/TextView;

    .line 102
    const v3, 0x7f08010d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->taobao_new:Landroid/widget/ImageView;

    .line 103
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->fillViewHodler(Lcom/alibaba/adi/collie/model/service/TaoTrackingData;Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;)V

    .line 115
    return-object v2

    .line 105
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;
    check-cast v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;

    .line 106
    .restart local v0       #holder:Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;
    iget-object v3, v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter$ViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0
.end method

.method public onDownloadCompleted(Ljava/lang/String;Z)V
    .locals 0
    .parameter "url"
    .parameter "success"

    .prologue
    .line 152
    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->notifyDataSetChanged()V

    .line 154
    :cond_0
    return-void
.end method

.method public resetDataNewStatus()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->data:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;

    .line 62
    .local v0, item:Lcom/alibaba/adi/collie/model/service/TaoTrackingData;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/adi/collie/model/service/TaoTrackingData;->setNew(Z)V

    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/TaoTrackingData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/TaoTrackingData;>;"
    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->data:Ljava/util/List;

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->notifyDataSetChanged()V

    .line 51
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoLogisticsAdapter;->data:Ljava/util/List;

    goto :goto_0
.end method
