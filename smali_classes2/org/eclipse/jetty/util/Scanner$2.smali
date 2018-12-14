.class synthetic Lorg/eclipse/jetty/util/Scanner$2;
.super Ljava/lang/Object;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 474
    invoke-static {}, Lorg/eclipse/jetty/util/Scanner$Notification;->values()[Lorg/eclipse/jetty/util/Scanner$Notification;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    sget-object v1, Lorg/eclipse/jetty/util/Scanner$Notification;->REMOVED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    sget-object v1, Lorg/eclipse/jetty/util/Scanner$Notification;->CHANGED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    sget-object v1, Lorg/eclipse/jetty/util/Scanner$Notification;->ADDED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
