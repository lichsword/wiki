.class public Lcom/taobao/statistic/TBSAE$Adv;
.super Ljava/lang/Object;
.source "TBSAE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBSAE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/statistic/TBSAE;


# direct methods
.method public constructor <init>(Lcom/taobao/statistic/TBSAE;)V
    .locals 0
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs ctrlClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "ct"
    .parameter "controlName"
    .parameter "kvs"

    .prologue
    .line 1088
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1089
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1090
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1091
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p3}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1095
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public ctrlClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 3
    .parameter "pageName"
    .parameter "ct"
    .parameter "controlName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1299
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1301
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1302
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1303
    invoke-virtual {p2}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1307
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public varargs ctrlClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "pageName"
    .parameter "ct"
    .parameter "controlName"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1067
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1070
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p2}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1075
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public ctrlClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 3
    .parameter "pageKey"
    .parameter "ct"
    .parameter "controlName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1323
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1325
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1326
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {p2}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1331
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public varargs ctrlClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "pageKey"
    .parameter "ct"
    .parameter "controlName"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1112
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1115
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {p2}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1120
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public varargs ctrlLongClicked(Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "ct"
    .parameter "controlName"
    .parameter "kvs"

    .prologue
    .line 1158
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1160
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p3}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1165
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public ctrlLongClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 3
    .parameter "pageName"
    .parameter "ct"
    .parameter "controlName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1351
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1353
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1354
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1355
    invoke-virtual {p2}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1359
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public varargs ctrlLongClicked(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "pageName"
    .parameter "ct"
    .parameter "controlName"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1137
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1140
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {p2}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1145
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public ctrlLongClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;)V
    .locals 3
    .parameter "pageKey"
    .parameter "ct"
    .parameter "controlName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1376
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1378
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1379
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1380
    invoke-virtual {p2}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1384
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public varargs ctrlLongClickedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "pageKey"
    .parameter "ct"
    .parameter "controlName"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1182
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1185
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {p2}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1190
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public varargs destroy(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "kvs"

    .prologue
    .line 983
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 985
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 989
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public varargs enter(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "kvs"

    .prologue
    .line 919
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 921
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 925
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public varargs enterWithPageName(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "pageName"
    .parameter "kvs"

    .prologue
    .line 939
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 940
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 941
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 942
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 945
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public forceUpload()V
    .locals 2

    .prologue
    .line 951
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 952
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->forceUpload()V

    .line 955
    :cond_0
    return-void
.end method

.method public varargs itemSelected(Lcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .parameter "ct"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "kvs"

    .prologue
    .line 1233
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz p3, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1236
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1237
    invoke-virtual {p1}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    .line 1241
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public itemSelected(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I)V
    .locals 6
    .parameter "pageName"
    .parameter "ct"
    .parameter "controlName"
    .parameter "selectedIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1403
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz p4, :cond_0

    .line 1405
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1406
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1407
    invoke-virtual {p2}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1411
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public varargs itemSelected(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 7
    .parameter "pageName"
    .parameter "ct"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1209
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz p4, :cond_0

    .line 1211
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1212
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1213
    invoke-virtual {p2}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    .line 1217
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public itemSelectedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I)V
    .locals 6
    .parameter "pageKey"
    .parameter "ct"
    .parameter "controlName"
    .parameter "selectedIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1430
    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz p4, :cond_0

    .line 1432
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1433
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1434
    invoke-virtual {p2}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1438
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public varargs itemSelectedOnPage(Ljava/lang/String;Lcom/taobao/statistic/CT;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 7
    .parameter "pageKey"
    .parameter "ct"
    .parameter "controlName"
    .parameter "selectedIndex"
    .parameter "kvs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1260
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz p4, :cond_0

    .line 1262
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1263
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1264
    invoke-virtual {p2}, Lcom/taobao/statistic/CT;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/statistic/core/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    .line 1268
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public varargs keepKvs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "keys"

    .prologue
    .line 1010
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1012
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1013
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->keepKvs(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1016
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public varargs leave(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "kvs"

    .prologue
    .line 966
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 968
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 972
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public onCaughException(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "ex"

    .prologue
    .line 1277
    if-eqz p1, :cond_0

    .line 1278
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1279
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1280
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/core/b;->onCaughException(Ljava/lang/Throwable;)V

    .line 1283
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public putKvs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1044
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1046
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->putKvs(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1050
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method

.method public turnOffLogFriendly()V
    .locals 2

    .prologue
    .line 995
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 996
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->turnOffLogFriendly()V

    .line 999
    :cond_0
    return-void
.end method

.method public varargs unKeepKvs(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "pageKey"
    .parameter "keys"

    .prologue
    .line 1027
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/taobao/statistic/TBSAE$Adv;->this$0:Lcom/taobao/statistic/TBSAE;

    #calls: Lcom/taobao/statistic/TBSAE;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {v1}, Lcom/taobao/statistic/TBSAE;->access$300(Lcom/taobao/statistic/TBSAE;)Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1029
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {v0, p1, p2}, Lcom/taobao/statistic/core/b;->unKeepKvs(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1033
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_0
    return-void
.end method
