.class public Lcom/alibaba/adi/collie/ui/MainPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "MainPagerAdapter.java"


# static fields
.field public static final PAGE_TAG_HOME:Ljava/lang/String; = "home"

.field public static final PAGE_TAG_JOKE:Ljava/lang/String; = "joke"

.field public static final PAGE_TAG_NEWS:Ljava/lang/String; = "news"

.field public static final PAGE_TAG_SYSTEM:Ljava/lang/String; = "system"

.field public static final PAGE_TAG_TAOBAO:Ljava/lang/String; = "taobao"

.field public static final TAG:Ljava/lang/String; = null

.field public static final UNKNOWN_POSITION:I = -0x1


# instance fields
.field private final context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

.field private homeFragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

.field private jokeFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

.field private mHomePosition:I

.field private mJokePosition:I

.field private mNewsPosition:I

.field private mSysPositioin:I

.field private mTaoPosition:I

.field private newsFragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

.field private systemNoticeFragment:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

.field private final tagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private taoFragment:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;)V
    .locals 1
    .parameter "fm"
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->tagList:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mSysPositioin:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mHomePosition:I

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mNewsPosition:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mJokePosition:I

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mTaoPosition:I

    .line 57
    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->loadData()V

    .line 59
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFragmentByPosition(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter "position"

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, fg:Landroid/support/v4/app/Fragment;
    iget v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mSysPositioin:I

    if-ne p1, v1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->systemNoticeFragment:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :cond_1
    iget v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mHomePosition:I

    if-ne p1, v1, :cond_2

    .line 119
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->homeFragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    .line 120
    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mJokePosition:I

    if-ne p1, v1, :cond_3

    .line 121
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->jokeFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    .line 122
    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mNewsPosition:I

    if-ne p1, v1, :cond_4

    .line 123
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->newsFragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    .line 124
    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mTaoPosition:I

    if-ne p1, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->taoFragment:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    goto :goto_0
.end method

.method public getHomeFragmentReference()Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->homeFragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    return-object v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mHomePosition:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter "position"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, tag:Ljava/lang/String;
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getItem(), position = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "taobao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->TAG:Ljava/lang/String;

    const-string v2, "tao"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->newInstance()Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->taoFragment:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    .line 139
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->taoFragment:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    .line 159
    :goto_0
    return-object v1

    .line 140
    :cond_0
    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->TAG:Ljava/lang/String;

    const-string v2, "sys"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->newInstance()Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->systemNoticeFragment:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    .line 143
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->systemNoticeFragment:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    goto :goto_0

    .line 144
    :cond_1
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->TAG:Ljava/lang/String;

    const-string v2, "home"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->newInstance()Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->homeFragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    .line 147
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->homeFragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    goto :goto_0

    .line 148
    :cond_2
    const-string v1, "news"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->TAG:Ljava/lang/String;

    const-string v2, "news"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->newInstance()Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->newsFragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    .line 151
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->newsFragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    goto :goto_0

    .line 152
    :cond_3
    const-string v1, "joke"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->TAG:Ljava/lang/String;

    const-string v2, "joke"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->newInstance()Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->jokeFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    .line 155
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->jokeFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    goto :goto_0

    .line 158
    :cond_4
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getItem(), return null"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 184
    const/4 v0, -0x2

    return v0
.end method

.method public getJokeFragment()Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->jokeFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    return-object v0
.end method

.method public getJokePosition()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mJokePosition:I

    return v0
.end method

.method public getNewsFragment()Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->newsFragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    return-object v0
.end method

.method public getNewsPosition()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mNewsPosition:I

    return v0
.end method

.method public getPositionByTag(Ljava/lang/String;)I
    .locals 3
    .parameter "tag"

    .prologue
    .line 69
    const/4 v1, -0x1

    .line 70
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 76
    :goto_1
    return v1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    move v1, v0

    .line 73
    goto :goto_1

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSysPositioin()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mSysPositioin:I

    return v0
.end method

.method public getSystemNoticeFragment()Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->systemNoticeFragment:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    return-object v0
.end method

.method public getTagByPosition(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTaoFragment()Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->taoFragment:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    return-object v0
.end method

.method public getTaoPosition()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mTaoPosition:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .parameter "container"
    .parameter "position"

    .prologue
    .line 165
    sget-object v1, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->TAG:Ljava/lang/String;

    const-string v2, "instantiateItem()"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .local v0, ret:Ljava/lang/Object;
    move-object v1, v0

    .line 167
    check-cast v1, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->context:Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;

    invoke-virtual {v1, v2}, Lcom/alibaba/adi/collie/ui/aslide/BaseFragment;->setMainActivityContext(Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;)V

    .line 168
    instance-of v1, v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 169
    check-cast v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->homeFragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 170
    :cond_1
    instance-of v1, v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 171
    check-cast v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->systemNoticeFragment:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    goto :goto_0

    .line 172
    :cond_2
    instance-of v1, v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 173
    check-cast v1, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->jokeFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    goto :goto_0

    .line 174
    :cond_3
    instance-of v1, v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 175
    check-cast v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->newsFragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    goto :goto_0

    .line 176
    :cond_4
    instance-of v1, v0, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 177
    check-cast v1, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->taoFragment:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    goto :goto_0
.end method

.method public loadData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 189
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->tagList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 191
    const-string v3, "adi_lock_enable_taobao"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v2

    .line 192
    .local v2, enableTaobao:Z
    const-string v3, "adi_lock_enable_news"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v1

    .line 193
    .local v1, enableNews:Z
    const-string v3, "adi_lock_enable_joke"

    invoke-static {v3, v4}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v0

    .line 196
    .local v0, enableJoke:Z
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->tagList:Ljava/util/ArrayList;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->tagList:Ljava/util/ArrayList;

    const-string v4, "home"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    if-eqz v0, :cond_0

    .line 205
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->tagList:Ljava/util/ArrayList;

    const-string v4, "joke"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    if-eqz v1, :cond_1

    .line 209
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->tagList:Ljava/util/ArrayList;

    const-string v4, "news"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_1
    if-eqz v2, :cond_2

    .line 213
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->tagList:Ljava/util/ArrayList;

    const-string v4, "taobao"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_2
    const-string v3, "system"

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getPositionByTag(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mSysPositioin:I

    .line 217
    const-string v3, "home"

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getPositionByTag(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mHomePosition:I

    .line 218
    const-string v3, "news"

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getPositionByTag(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mNewsPosition:I

    .line 219
    const-string v3, "joke"

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getPositionByTag(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mJokePosition:I

    .line 220
    const-string v3, "taobao"

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->getPositionByTag(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->mTaoPosition:I

    .line 221
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->jokeFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->jokeFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->onPageSelected(I)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->newsFragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->newsFragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->onPageSelected(I)V

    .line 252
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->systemNoticeFragment:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->systemNoticeFragment:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->resetRootView()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->homeFragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->homeFragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->resetRootView()V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->jokeFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->jokeFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;->resetRootView()V

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->newsFragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->newsFragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;->resetRootView()V

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->taoFragment:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/MainPagerAdapter;->taoFragment:Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/taobao/TaobaoActivity$TaobaoFragment;->resetRootView()V

    .line 269
    :cond_4
    return-void
.end method
