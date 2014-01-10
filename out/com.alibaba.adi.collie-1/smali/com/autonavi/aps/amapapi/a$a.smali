.class final Lcom/autonavi/aps/amapapi/a$a;
.super Landroid/content/BroadcastReceiver;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/aps/amapapi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/autonavi/aps/amapapi/a;


# direct methods
.method private constructor <init>(Lcom/autonavi/aps/amapapi/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1284
    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/aps/amapapi/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1282
    invoke-direct {p0, p1}, Lcom/autonavi/aps/amapapi/a$a;-><init>(Lcom/autonavi/aps/amapapi/a;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1289
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1290
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    iget-object v1, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/a;->a(Lcom/autonavi/aps/amapapi/a;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/aps/amapapi/a;->a(Lcom/autonavi/aps/amapapi/a;Ljava/util/List;)V

    .line 1291
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->b(Lcom/autonavi/aps/amapapi/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/autonavi/aps/amapapi/a;->a(Lcom/autonavi/aps/amapapi/a;Ljava/util/List;)V

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->b(Lcom/autonavi/aps/amapapi/a;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->a(Ljava/util/List;)V

    .line 1352
    :cond_1
    :goto_0
    return-void

    .line 1298
    :cond_2
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1299
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->a(Lcom/autonavi/aps/amapapi/a;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1300
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1305
    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->c(Lcom/autonavi/aps/amapapi/a;)V

    goto :goto_0

    .line 1302
    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->c(Lcom/autonavi/aps/amapapi/a;)V

    goto :goto_0

    .line 1308
    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->c(Lcom/autonavi/aps/amapapi/a;)V

    goto :goto_0

    .line 1313
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1314
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 1315
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0}, Lcom/autonavi/aps/amapapi/a;->d(Lcom/autonavi/aps/amapapi/a;)V

    goto :goto_0

    .line 1319
    :cond_4
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1320
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {p1}, Lcom/autonavi/aps/amapapi/Utils;->airPlaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/aps/amapapi/a;->a(Lcom/autonavi/aps/amapapi/a;Z)V

    goto :goto_0

    .line 1324
    :cond_5
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    const-string v0, "level"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1329
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1330
    const-string v2, "status"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1331
    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 1332
    const-string v3, "batt is "

    aput-object v3, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    const/4 v3, 0x2

    const-string v4, "%"

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/autonavi/aps/amapapi/Utils;->writeCat([Ljava/lang/Object;)V

    .line 1333
    packed-switch v2, :pswitch_data_1

    .line 1348
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0, v6}, Lcom/autonavi/aps/amapapi/a;->b(Lcom/autonavi/aps/amapapi/a;Z)V

    goto/16 :goto_0

    .line 1335
    :pswitch_4
    const/16 v1, 0xf

    if-ge v0, v1, :cond_6

    .line 1339
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0, v5}, Lcom/autonavi/aps/amapapi/a;->b(Lcom/autonavi/aps/amapapi/a;Z)V

    goto/16 :goto_0

    .line 1341
    :cond_6
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/a$a;->a:Lcom/autonavi/aps/amapapi/a;

    invoke-static {v0, v6}, Lcom/autonavi/aps/amapapi/a;->b(Lcom/autonavi/aps/amapapi/a;Z)V

    goto/16 :goto_0

    .line 1300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1333
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch
.end method
