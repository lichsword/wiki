.class Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;
.super Landroid/os/AsyncTask;
.source "SystemNoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectSystemNoticeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final noticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 484
    new-instance v0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    invoke-direct {v0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;-><init>()V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->noticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;-><init>(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)V

    return-void
.end method

.method private setCallData()I
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 563
    new-instance v5, Lcom/alibaba/adi/collie/model/SystemNoticeData;

    sget-object v10, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->CALL_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Lcom/alibaba/adi/collie/model/SystemNoticeData;-><init>(Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;Ljava/lang/Object;)V

    .line 564
    .local v5, callSummary:Lcom/alibaba/adi/collie/model/SystemNoticeData;
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->noticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v10, v10, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->noticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->noticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v11, v11, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->callIndex:I

    .line 566
    const/4 v8, 0x0

    .line 567
    .local v8, notifyCount:I
    const/4 v10, 0x1

    new-array v0, v10, [I

    aput v8, v0, v9

    .line 568
    .local v0, args:[I
    sget-object v10, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v11, "xhh get call begin"

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/alibaba/adi/collie/util/NotificationHelper;->getMissedCall(Landroid/content/Context;[I)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 570
    .local v3, callMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/CallData;>;>;"
    sget-object v10, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v11, "xhh get call end"

    invoke-static {v10, v11}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    if-nez v3, :cond_0

    move v4, v9

    .line 589
    :goto_0
    return v4

    .line 574
    :cond_0
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 575
    .local v1, callIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/CallData;>;>;>;"
    const/4 v4, 0x0

    .line 576
    .local v4, callSize:I
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 586
    aget v8, v0, v9

    .line 587
    iget-object v9, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    const/4 v10, 0x2

    #calls: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->setSystemNotifyCount(II)V
    invoke-static {v9, v8, v10}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$13(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;II)V

    .line 588
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->setData(Ljava/lang/Object;)V

    goto :goto_0

    .line 577
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 578
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/CallData;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 579
    .local v2, callList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/CallData;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_1

    .line 582
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    .line 583
    .local v7, listSize:I
    add-int/2addr v4, v7

    .line 584
    iget-object v10, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->noticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v10, v10, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    new-instance v11, Lcom/alibaba/adi/collie/model/SystemNoticeData;

    sget-object v12, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->CALL_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-direct {v11, v12, v2}, Lcom/alibaba/adi/collie/model/SystemNoticeData;-><init>(Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;Ljava/lang/Object;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setSmsData()I
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v10, 0x0

    .line 525
    new-instance v9, Lcom/alibaba/adi/collie/model/SystemNoticeData;

    sget-object v11, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SMS_SUMMARY:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Lcom/alibaba/adi/collie/model/SystemNoticeData;-><init>(Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;Ljava/lang/Object;)V

    .line 526
    .local v9, smsSummary:Lcom/alibaba/adi/collie/model/SystemNoticeData;
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->noticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v11, v11, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->noticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v12, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->noticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v12, v12, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    iput v12, v11, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->smsIndex:I

    .line 528
    const/4 v4, 0x0

    .line 529
    .local v4, notifyCount:I
    new-array v0, v14, [I

    aput v4, v0, v10

    .line 530
    .local v0, args:[I
    sget-object v11, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v12, "xhh get sms begin"

    invoke-static {v11, v12}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$1(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/alibaba/adi/collie/util/NotificationHelper;->getMissedSms(Landroid/content/Context;[I)Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 532
    .local v7, smsMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/SmsData;>;>;"
    sget-object v11, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v12, "xhh get sms end"

    invoke-static {v11, v12}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    if-nez v7, :cond_1

    move v8, v10

    .line 559
    :cond_0
    :goto_0
    return v8

    .line 536
    :cond_1
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    #setter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mSmsThreadIdSet:Ljava/util/Set;
    invoke-static {v11, v12}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$12(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Ljava/util/Set;)V

    .line 537
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 538
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/SmsData;>;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 539
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/SmsData;>;>;>;"
    const/4 v8, 0x0

    .line 540
    .local v8, smsSize:I
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 550
    aget v4, v0, v10

    .line 551
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->setSystemNotifyCount(II)V
    invoke-static {v11, v4, v14}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$13(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;II)V

    .line 552
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/alibaba/adi/collie/model/SystemNoticeData;->setData(Ljava/lang/Object;)V

    .line 553
    if-lez v8, :cond_0

    .line 554
    const-string v11, "system_first_msg"

    invoke-static {v11, v14}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->getUserPref(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 555
    const-string v11, "system_show_guide"

    invoke-static {v11, v14}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    .line 556
    const-string v11, "system_first_msg"

    invoke-static {v11, v10}, Lcom/alibaba/adi/collie/util/PreferenceHelper;->setUserPref(Ljava/lang/String;Z)V

    goto :goto_0

    .line 541
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 542
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/adi/collie/model/SmsData;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 543
    .local v6, smsList:Ljava/util/List;,"Ljava/util/List<Lcom/alibaba/adi/collie/model/SmsData;>;"
    if-eqz v6, :cond_2

    .line 546
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 547
    .local v3, listSize:I
    add-int/2addr v8, v3

    .line 548
    iget-object v11, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->noticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v11, v11, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    new-instance v12, Lcom/alibaba/adi/collie/model/SystemNoticeData;

    sget-object v13, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SMS_ITEM:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-direct {v12, v13, v6}, Lcom/alibaba/adi/collie/model/SystemNoticeData;-><init>(Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;Ljava/lang/Object;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 8
    .parameter "objects"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 488
    sget-object v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v5, "xhh task begin"

    invoke-static {v2, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->setCallData()I

    move-result v0

    .line 491
    .local v0, callSize:I
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    if-lez v0, :cond_0

    move v2, v3

    :goto_0
    #setter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->hasCall:Z
    invoke-static {v5, v2}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$6(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Z)V

    .line 492
    sget-object v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xhh call size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    sget-object v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v3, "xhh call task canceled"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 505
    :goto_1
    return-object v2

    :cond_0
    move v2, v4

    .line 491
    goto :goto_0

    .line 497
    :cond_1
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->noticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    iget-object v2, v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;->data:Ljava/util/List;

    new-instance v5, Lcom/alibaba/adi/collie/model/SystemNoticeData;

    sget-object v6, Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;->SYSTEM_DIVIDER:Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/adi/collie/model/SystemNoticeData;-><init>(Lcom/alibaba/adi/collie/model/SystemNoticeData$SystemTag;Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->setSmsData()I

    move-result v1

    .line 499
    .local v1, smsSize:I
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    if-lez v1, :cond_2

    :goto_2
    #setter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->hasSms:Z
    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$7(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Z)V

    .line 500
    sget-object v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "xhh sms size "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    sget-object v2, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v3, "xhh sms task cancelled"

    invoke-static {v2, v3}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 499
    goto :goto_2

    .line 505
    :cond_3
    add-int v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "count"

    .prologue
    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$8(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #calls: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->setClearLayout(Ljava/lang/Integer;)V
    invoke-static {v1, p1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$9(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;Ljava/lang/Integer;)V

    .line 513
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$10(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mListviewAnimationController:Landroid/view/animation/LayoutAnimationController;
    invoke-static {v3}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$11(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 514
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$8(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->noticeDataCollection:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;

    invoke-virtual {v1, v3}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->setData(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeDataCollection;)V

    .line 515
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->this$1:Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;

    #getter for: Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->mAdapter:Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->access$8(Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;)Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeAdapter;->notifyDataSetChanged()V

    .line 511
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 521
    sget-object v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    const-string v2, "xhh task end"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void

    .line 511
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alibaba/adi/collie/ui/system/SystemNoticeActivity$SystemNoticeFragment$CollectSystemNoticeTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
