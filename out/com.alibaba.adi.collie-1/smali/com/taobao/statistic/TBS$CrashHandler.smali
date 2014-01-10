.class public Lcom/taobao/statistic/TBS$CrashHandler;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrashHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;,
        Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    return-void
.end method

.method public static disableEffect()V
    .locals 3

    .prologue
    .line 941
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 942
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 943
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->aJ()V

    .line 946
    :cond_0
    monitor-exit v2

    .line 947
    return-void

    .line 946
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeDaemonCrashCaughtListener(Ljava/lang/String;)V
    .locals 3
    .parameter "threadName"

    .prologue
    .line 1081
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1082
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1083
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1084
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/statistic/core/a;->removeDaemonCrashCaughtListener(Ljava/lang/String;)V

    .line 1088
    :cond_0
    monitor-exit v2

    .line 1090
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1088
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setContinueWhenDaemonThreadUncaughException()V
    .locals 3

    .prologue
    .line 1096
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1097
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1098
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1099
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->setContinueWhenDaemonThreadUncaughException()V

    .line 1102
    :cond_0
    monitor-exit v2

    .line 1103
    return-void

    .line 1102
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setOnCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1022
    if-eqz p0, :cond_1

    .line 1023
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1024
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1025
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/statistic/core/a;->setOnCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;)V

    .line 1028
    :cond_0
    monitor-exit v2

    .line 1030
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1028
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setOnDaemonCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 3
    .parameter "daemonThreadCrashCaughtListener"

    .prologue
    .line 1040
    if-eqz p0, :cond_1

    .line 1041
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1042
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1043
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/statistic/core/a;->setOnDaemonCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V

    .line 1047
    :cond_0
    monitor-exit v2

    .line 1049
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1047
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setOnDaemonCrashCaughtListener(Ljava/lang/String;Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 3
    .parameter "threadName"
    .parameter "daemonThreadCrashCaughtListener"

    .prologue
    .line 1062
    invoke-static {p0}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 1064
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1065
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1066
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/taobao/statistic/core/a;->setOnDaemonCrashCaughtListener(Ljava/lang/String;Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V

    .line 1070
    :cond_0
    monitor-exit v2

    .line 1072
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1070
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setSubmitToSystemFlag()V
    .locals 3

    .prologue
    .line 953
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 954
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 955
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->aK()V

    .line 958
    :cond_0
    monitor-exit v2

    .line 959
    return-void

    .line 958
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setToastStyle(ILjava/lang/String;)V
    .locals 3
    .parameter "howLongToastShow"
    .parameter "toastString"

    .prologue
    .line 1000
    invoke-static {p1}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-lez p0, :cond_1

    .line 1001
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1002
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 1003
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/taobao/statistic/core/a;->a(ILjava/lang/String;)V

    .line 1007
    :cond_0
    monitor-exit v2

    .line 1009
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 1007
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static turnOff()V
    .locals 3

    .prologue
    .line 929
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 930
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 931
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/statistic/core/a;->aI()V

    .line 934
    :cond_0
    monitor-exit v2

    .line 935
    return-void

    .line 934
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static withRestart(Landroid/app/Activity;II)V
    .locals 3
    .parameter "mainActivityForRestart"
    .parameter "howLongAppRestart"
    .parameter "howManyTimes"

    .prologue
    .line 977
    if-eqz p0, :cond_1

    if-lez p2, :cond_1

    if-lez p1, :cond_1

    .line 979
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 980
    :try_start_0
    #calls: Lcom/taobao/statistic/TBS;->getExecProxy()Lcom/taobao/statistic/core/b;
    invoke-static {}, Lcom/taobao/statistic/TBS;->access$600()Lcom/taobao/statistic/core/b;

    move-result-object v0

    .line 981
    .local v0, execProxy:Lcom/taobao/statistic/core/b;
    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {v0}, Lcom/taobao/statistic/core/b;->bh()Lcom/taobao/statistic/core/a;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/taobao/statistic/core/a;->a(Landroid/app/Activity;II)V

    .line 986
    :cond_0
    monitor-exit v2

    .line 988
    .end local v0           #execProxy:Lcom/taobao/statistic/core/b;
    :cond_1
    return-void

    .line 986
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
