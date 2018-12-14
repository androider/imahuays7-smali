.class public Lme/jessyan/autosize/DefaultAutoAdaptStrategy;
.super Ljava/lang/Object;
.source "DefaultAutoAdaptStrategy.java"

# interfaces
.implements Lme/jessyan/autosize/AutoAdaptStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAdapt(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 6

    .line 44
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getExternalAdaptManager()Lme/jessyan/autosize/external/ExternalAdaptManager;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/external/ExternalAdaptManager;->isRun()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getExternalAdaptManager()Lme/jessyan/autosize/external/ExternalAdaptManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Lme/jessyan/autosize/external/ExternalAdaptManager;->isCancelAdapt(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s canceled the adaptation!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lme/jessyan/autosize/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Lme/jessyan/autosize/AutoSize;->cancelAdapt(Landroid/app/Activity;)V

    return-void

    .line 50
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getExternalAdaptManager()Lme/jessyan/autosize/external/ExternalAdaptManager;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Lme/jessyan/autosize/external/ExternalAdaptManager;->getExternalAdaptInfoOfActivity(Ljava/lang/Class;)Lme/jessyan/autosize/external/ExternalAdaptInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "%s used %s for adaptation!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-class p1, Lme/jessyan/autosize/external/ExternalAdaptInfo;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 54
    invoke-static {p2, v0}, Lme/jessyan/autosize/AutoSize;->autoConvertDensityOfExternalAdaptInfo(Landroid/app/Activity;Lme/jessyan/autosize/external/ExternalAdaptInfo;)V

    return-void

    .line 61
    :cond_1
    instance-of v0, p1, Lme/jessyan/autosize/internal/CancelAdapt;

    if-eqz v0, :cond_2

    .line 62
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s canceled the adaptation!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lme/jessyan/autosize/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 63
    invoke-static {p2}, Lme/jessyan/autosize/AutoSize;->cancelAdapt(Landroid/app/Activity;)V

    return-void

    .line 68
    :cond_2
    instance-of v0, p1, Lme/jessyan/autosize/internal/CustomAdapt;

    if-eqz v0, :cond_3

    .line 69
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%s implemented by %s!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const-class v2, Lme/jessyan/autosize/internal/CustomAdapt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 70
    check-cast p1, Lme/jessyan/autosize/internal/CustomAdapt;

    invoke-static {p2, p1}, Lme/jessyan/autosize/AutoSize;->autoConvertDensityOfCustomAdapt(Landroid/app/Activity;Lme/jessyan/autosize/internal/CustomAdapt;)V

    goto :goto_0

    .line 72
    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s used the global configuration."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 73
    invoke-static {p2}, Lme/jessyan/autosize/AutoSize;->autoConvertDensityOfGlobal(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
