.class public Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;
.super Ljava/lang/Object;
.source "TBSecurityUsertrackProxy.java"


# static fields
.field private static ENABLE_EXP_INFO_OUT:Z = false

.field private static final EventId:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->ENABLE_EXP_INFO_OUT:Z

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GetExtClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, clazzExt:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "com.taobao.statistic.TBS$Ext"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 35
    :try_start_1
    const-string v2, "com.taobao.statistic.TBS.Ext"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 42
    :cond_1
    :goto_1
    return-object v0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, e:Ljava/lang/ClassNotFoundException;
    sget-boolean v2, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->ENABLE_EXP_INFO_OUT:Z

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 37
    .restart local v1       #e:Ljava/lang/ClassNotFoundException;
    sget-boolean v2, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->ENABLE_EXP_INFO_OUT:Z

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static UserTrackUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "pageName"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v3, 0x2

    .line 19
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p1, v0, v3

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    .line 20
    .local v0, args:[Ljava/lang/Object;
    invoke-static {}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->GetExtClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "commitEvent"

    invoke-static {v1, v2, v0}, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method private static invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter "methodName"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    .line 50
    .local v4, params:[Ljava/lang/Class;
    const/4 v3, 0x0

    .line 52
    .local v3, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 59
    const/4 v2, 0x0

    .line 61
    .local v2, instance:Ljava/lang/Object;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 72
    .end local v2           #instance:Ljava/lang/Object;
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 74
    :try_start_2
    invoke-virtual {v3, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v5, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->ENABLE_EXP_INFO_OUT:Z

    if-eqz v5, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 54
    .local v1, ep:Ljava/lang/NoSuchMethodException;
    sget-boolean v5, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->ENABLE_EXP_INFO_OUT:Z

    if-eqz v5, :cond_0

    .line 55
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v1           #ep:Ljava/lang/NoSuchMethodException;
    .restart local v2       #instance:Ljava/lang/Object;
    :catch_2
    move-exception v1

    .line 63
    .local v1, ep:Ljava/lang/InstantiationException;
    sget-boolean v5, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->ENABLE_EXP_INFO_OUT:Z

    if-eqz v5, :cond_2

    .line 64
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 66
    .end local v1           #ep:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 67
    .local v1, ep:Ljava/lang/IllegalAccessException;
    sget-boolean v5, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->ENABLE_EXP_INFO_OUT:Z

    if-eqz v5, :cond_2

    .line 68
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized setEnableOutPutExpInfo(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 14
    const-class v0, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/taobao/securityjni/usertrack/TBSecurityUsertrackProxy;->ENABLE_EXP_INFO_OUT:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    return-void

    .line 14
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
