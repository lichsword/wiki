.class public Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;
.super Landroid/widget/BaseAdapter;
.source "JokeAdapter.java"

# interfaces
.implements Lorg/lichsword/util/ImageManager$ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;,
        Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$model$service$ImageFunnyJokeBase$Tag:[I


# instance fields
.field private context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrlLoadStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Lorg/lichsword/util/ImageManager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alibaba$adi$collie$model$service$ImageFunnyJokeBase$Tag()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->$SWITCH_TABLE$com$alibaba$adi$collie$model$service$ImageFunnyJokeBase$Tag:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;->values()[Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;->IMAGE_FUNNY:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;->JOKE:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->$SWITCH_TABLE$com$alibaba$adi$collie$model$service$ImageFunnyJokeBase$Tag:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->manager:Lorg/lichsword/util/ImageManager;

    .line 43
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->data:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->mUrlLoadStatusMap:Ljava/util/Map;

    .line 46
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->initContentData()V

    .line 47
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
            "Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->manager:Lorg/lichsword/util/ImageManager;

    .line 50
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    .line 51
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->data:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->mUrlLoadStatusMap:Ljava/util/Map;

    .line 53
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->initContentData()V

    .line 54
    return-void
.end method

.method private fillViewHolder(Lcom/alibaba/adi/collie/model/service/ImageFunnyData;Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;)V
    .locals 7
    .parameter "item"
    .parameter "holder"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v3, p2, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v3, p2, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->jokeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, title:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 165
    iget-object v3, p2, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v3, p2, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->getOriginImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->manager:Lorg/lichsword/util/ImageManager;

    const-string v4, "joke"

    invoke-virtual {v3, v2, v4}, Lorg/lichsword/util/ImageManager;->isImageCached(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/MainActivity;->isCurrentJokePage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->manager:Lorg/lichsword/util/ImageManager;

    iget-object v4, p2, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->image:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    const/4 v5, 0x0

    const-string v6, "joke"

    invoke-virtual {v3, v4, v2, v5, v6}, Lorg/lichsword/util/ImageManager;->bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 176
    sget-object v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->LOADED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    invoke-virtual {p2, v3}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->setStatus(Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 168
    .restart local v1       #title:Ljava/lang/String;
    :cond_1
    iget-object v3, p2, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 178
    .restart local v2       #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 181
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->mUrlLoadStatusMap:Ljava/util/Map;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->mUrlLoadStatusMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 182
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->mUrlLoadStatusMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->FAILED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    if-ne v3, v4, :cond_3

    .line 183
    sget-object v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->FAILED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    invoke-virtual {p2, v3}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->setStatus(Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;)V

    goto :goto_1

    .line 186
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/MainActivity;->isCurrentJokePage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->manager:Lorg/lichsword/util/ImageManager;

    iget-object v4, p2, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->image:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    const/4 v5, 0x0

    const-string v6, "joke"

    invoke-virtual {v3, v4, v2, v5, v6}, Lorg/lichsword/util/ImageManager;->bindUrlToImageView(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :cond_4
    :goto_2
    sget-object v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->LOADING:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    invoke-virtual {p2, v3}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->setStatus(Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;)V

    goto :goto_1

    .line 189
    :catch_1
    move-exception v0

    .line 190
    .restart local v0       #e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2
.end method

.method private fillViewHolder(Lcom/alibaba/adi/collie/model/service/JokeData;Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;)V
    .locals 2
    .parameter "item"
    .parameter "holder"

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p2, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->jokeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p2, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p2, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/adi/collie/model/service/JokeData;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    return-void
.end method

.method private initContentData()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lorg/lichsword/util/ImageManager;->getInstance()Lorg/lichsword/util/ImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->manager:Lorg/lichsword/util/ImageManager;

    .line 58
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->manager:Lorg/lichsword/util/ImageManager;

    invoke-virtual {v0, p0}, Lorg/lichsword/util/ImageManager;->addListener(Lorg/lichsword/util/ImageManager$ImageDownloadListener;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 86
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
            "Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    .locals 1
    .parameter "position"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;

    .line 95
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
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->getItem(I)Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 106
    move-object v2, p2

    .line 107
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->getItem(I)Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;

    move-result-object v1

    .line 109
    .local v1, item:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    const/4 v3, 0x0

    .line 111
    .local v3, viewHolder:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;
    if-nez v2, :cond_0

    .line 112
    sget-object v4, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030038

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 114
    new-instance v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;

    .end local v3           #viewHolder:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;
    invoke-direct {v3, p0}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;-><init>(Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;)V

    .line 115
    .restart local v3       #viewHolder:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;
    const v4, 0x7f08008b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->jokeLayout:Landroid/widget/LinearLayout;

    .line 116
    const v4, 0x7f0800ec

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLayout:Landroid/widget/LinearLayout;

    .line 117
    const v4, 0x7f0800eb

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 118
    const v4, 0x7f0800ed

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 119
    const v4, 0x7f0800ee

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    iput-object v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->image:Lcom/alibaba/adi/collie/ui/view/AutoScaleImageView;

    .line 120
    const v4, 0x7f0800ef

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLoadingLayout:Landroid/view/View;

    .line 121
    const v4, 0x7f0800f1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLoadingProgressBar:Landroid/widget/ImageView;

    .line 122
    const v4, 0x7f0800f0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->imageLoadingBackground:Landroid/widget/ImageView;

    .line 124
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iput v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->paddingLeft:I

    .line 125
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iput v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->paddingRight:I

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iput v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->paddingTop:I

    .line 127
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iput v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->paddingBottom:I

    .line 128
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    :goto_0
    iget v5, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->paddingLeft:I

    if-nez p1, :cond_1

    const/4 v4, 0x0

    :goto_1
    iget v6, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->paddingRight:I

    .line 133
    iget v7, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->paddingBottom:I

    .line 132
    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    invoke-static {}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->$SWITCH_TABLE$com$alibaba$adi$collie$model$service$ImageFunnyJokeBase$Tag()[I

    move-result-object v4

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;->getTag()Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase$Tag;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 147
    .end local v1           #item:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    :goto_2
    return-object v2

    .line 130
    .restart local v1       #item:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #viewHolder:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;
    check-cast v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;

    .restart local v3       #viewHolder:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;
    goto :goto_0

    .line 132
    :cond_1
    iget v4, v3, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;->paddingTop:I

    goto :goto_1

    .line 137
    :pswitch_0
    check-cast v1, Lcom/alibaba/adi/collie/model/service/JokeData;

    .end local v1           #item:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    invoke-direct {p0, v1, v3}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->fillViewHolder(Lcom/alibaba/adi/collie/model/service/JokeData;Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;)V

    goto :goto_2

    .restart local v1       #item:Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;
    :pswitch_1
    move-object v0, v1

    .line 140
    check-cast v0, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;

    .line 141
    .local v0, imageFunnyData:Lcom/alibaba/adi/collie/model/service/ImageFunnyData;
    invoke-direct {p0, v0, v3}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->fillViewHolder(Lcom/alibaba/adi/collie/model/service/ImageFunnyData;Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ViewHolder;)V

    .line 142
    const-string v4, "vliux"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/service/ImageFunnyData;->getOriginImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " fillViewHolder()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDownloadCompleted(Ljava/lang/String;Z)V
    .locals 2
    .parameter "url"
    .parameter "success"

    .prologue
    .line 247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->mUrlLoadStatusMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 248
    if-eqz p2, :cond_1

    .line 249
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->mUrlLoadStatusMap:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->LOADED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->notifyDataSetChanged()V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->mUrlLoadStatusMap:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;->FAILED:Lcom/alibaba/adi/collie/ui/joke/JokeAdapter$ImageLoadStatus;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    .line 63
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/service/ImageFunnyJokeBase;>;"
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->mUrlLoadStatusMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->mUrlLoadStatusMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 72
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 73
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->data:Ljava/util/List;

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method
