.class public Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;
.super Lcom/alibaba/adi/collie/ui/BaseActivity;
.source "ChoiceCityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/adi/collie/ui/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final CITY_LIST:I

.field private final DISTRICT_LIST:I

.field private final PROVINCE_LIST:I

.field private city:Ljava/lang/String;

.field private cityAdapter:Lcom/alibaba/adi/collie/ui/weather/CityAdapter;

.field cursor:Landroid/database/Cursor;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbm:Lcom/alibaba/adi/collie/ui/weather/DBManager;

.field private district:Ljava/lang/String;

.field private gpsCity:Ljava/lang/String;

.field private gpsCityTextView:Landroid/widget/TextView;

.field private listView:Landroid/widget/ListView;

.field private list_type:I

.field private mHeadLinearLayout:Landroid/widget/LinearLayout;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/ui/weather/CityListItem;",
            ">;"
        }
    .end annotation
.end field

.field private province:Ljava/lang/String;

.field private provincePcode:Ljava/lang/String;

.field private sqlCity:Ljava/lang/String;

.field private sqlDistrict:Ljava/lang/String;

.field private sqlProvince:Ljava/lang/String;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cursor:Landroid/database/Cursor;

    .line 36
    const-string v0, "select * from province"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->sqlProvince:Ljava/lang/String;

    .line 37
    const-string v0, "select * from city where pcode=\'"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->sqlCity:Ljava/lang/String;

    .line 38
    const-string v0, "select * from district where pcode=\'"

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->sqlDistrict:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->PROVINCE_LIST:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->CITY_LIST:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->DISTRICT_LIST:I

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->gpsCityTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->saveCityFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private backEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 206
    iget v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->list_type:I

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->backListViewTop()V

    .line 223
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cityAdapter:Lcom/alibaba/adi/collie/ui/weather/CityAdapter;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/weather/CityAdapter;->refresh(Ljava/util/ArrayList;)V

    .line 224
    return-void

    .line 208
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->finish()V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->sqlProvince:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->getCityListItems(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mList:Ljava/util/ArrayList;

    .line 212
    iput v3, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->list_type:I

    .line 213
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->titleTextView:Landroid/widget/TextView;

    const-string v1, "\u57ce\u5e02\u9009\u62e9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->gpsCityTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->sqlCity:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->provincePcode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->getCityListItems(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mList:Ljava/util/ArrayList;

    .line 218
    iput v2, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->list_type:I

    .line 219
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private backListViewTop()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isStackFromBottom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 239
    return-void
.end method

.method private closeDB()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->dbm:Lcom/alibaba/adi/collie/ui/weather/DBManager;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->dbm:Lcom/alibaba/adi/collie/ui/weather/DBManager;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/weather/DBManager;->closeDatabase()V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 146
    :cond_2
    return-void
.end method

.method private saveCityFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cityName"
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    .line 227
    const-string v0, "choice_city_key"

    invoke-static {v0, p1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "choice_city_code_key"

    invoke-static {v0, p2}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    sget-object v1, Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;->WEATHER:Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/alibaba/adi/collie/service/AdiScheduledNetworkService;->startAdiSync([Lcom/alibaba/adi/collie/business/adiserver/sync/AdiSyncManager$TypeGet;)V

    .line 230
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->finish()V

    .line 232
    return-void
.end method


# virtual methods
.method public getCityListItems(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 6
    .parameter "sql"
    .parameter "pcode"
    .parameter "isReadHasChild"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/adi/collie/ui/weather/CityListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v3, Lcom/alibaba/adi/collie/ui/weather/DBManager;

    invoke-direct {v3}, Lcom/alibaba/adi/collie/ui/weather/DBManager;-><init>()V

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->dbm:Lcom/alibaba/adi/collie/ui/weather/DBManager;

    .line 93
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->dbm:Lcom/alibaba/adi/collie/ui/weather/DBManager;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/weather/DBManager;->openDatabase()V

    .line 94
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->dbm:Lcom/alibaba/adi/collie/ui/weather/DBManager;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/ui/weather/DBManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/alibaba/adi/collie/ui/weather/CityListItem;>;"
    if-eqz p2, :cond_0

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cursor:Landroid/database/Cursor;

    .line 101
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    :cond_1
    new-instance v2, Lcom/alibaba/adi/collie/ui/weather/CityListItem;

    invoke-direct {v2}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;-><init>()V

    .line 105
    .local v2, myListItem:Lcom/alibaba/adi/collie/ui/weather/CityListItem;
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    const-string v5, "utf-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->setName(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cursor:Landroid/database/Cursor;

    const-string v5, "code"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->setPcode(Ljava/lang/String;)V

    .line 107
    if-eqz p3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cursor:Landroid/database/Cursor;

    const-string v5, "has_child"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->setHas_child(I)V

    .line 109
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 116
    .end local v2           #myListItem:Lcom/alibaba/adi/collie/ui/weather/CityListItem;
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->closeDB()V

    .line 118
    :goto_0
    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->closeDB()V

    goto :goto_0

    .line 115
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 116
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->closeDB()V

    .line 117
    throw v3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 190
    :pswitch_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->backEvent()V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x7f080009
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 61
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->setContentView(I)V

    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->list_type:I

    .line 64
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->sqlProvince:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->getCityListItems(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/alibaba/adi/collie/ui/weather/CityAdapter;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/alibaba/adi/collie/ui/weather/CityAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cityAdapter:Lcom/alibaba/adi/collie/ui/weather/CityAdapter;

    .line 66
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->listView:Landroid/widget/ListView;

    .line 67
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mHeadLinearLayout:Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mHeadLinearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->gpsCityTextView:Landroid/widget/TextView;

    .line 70
    const-string v0, "gdmap_city_key"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->gpsCity:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mHeadLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cityAdapter:Lcom/alibaba/adi/collie/ui/weather/CityAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->gpsCity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->gpsCityTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u81ea\u52a8\u5b9a\u4f4d\uff08"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->gpsCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->titleTextView:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mHeadLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity$1;-><init>(Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->gpsCityTextView:Landroid/widget/TextView;

    const-string v1, "\u81ea\u52a8\u5b9a\u4f4d\uff08\u5b9a\u4f4d\u4e2d\uff09"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onDestroy()V

    .line 125
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 151
    iget v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->list_type:I

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->backListViewTop()V

    .line 183
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->cityAdapter:Lcom/alibaba/adi/collie/ui/weather/CityAdapter;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/ui/weather/CityAdapter;->refresh(Ljava/util/ArrayList;)V

    .line 184
    :goto_1
    return-void

    .line 153
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->getPcode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->provincePcode:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->sqlCity:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->provincePcode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->getCityListItems(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mList:Ljava/util/ArrayList;

    .line 155
    iput v2, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->list_type:I

    .line 156
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->province:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->province:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->getPcode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->saveCityFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->gpsCityTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->sqlDistrict:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->getPcode()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->getCityListItems(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mList:Ljava/util/ArrayList;

    .line 166
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->list_type:I

    .line 167
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->city:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->city:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->getPcode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->saveCityFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 175
    :pswitch_2
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->district:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->district:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/adi/collie/ui/weather/CityListItem;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/weather/CityListItem;->getPcode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->saveCityFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 197
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/weather/ChoiceCityActivity;->backEvent()V

    .line 199
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onPause()V

    .line 137
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onRestart()V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseActivity;->onResume()V

    .line 131
    return-void
.end method
