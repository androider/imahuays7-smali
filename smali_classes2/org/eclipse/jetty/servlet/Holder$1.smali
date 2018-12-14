.class synthetic Lorg/eclipse/jetty/servlet/Holder$1;
.super Ljava/lang/Object;
.source "Holder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$eclipse$jetty$servlet$Holder$Source:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    invoke-static {}, Lorg/eclipse/jetty/servlet/Holder$Source;->values()[Lorg/eclipse/jetty/servlet/Holder$Source;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/jetty/servlet/Holder$1;->$SwitchMap$org$eclipse$jetty$servlet$Holder$Source:[I

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$1;->$SwitchMap$org$eclipse$jetty$servlet$Holder$Source:[I

    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/Holder$Source;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$1;->$SwitchMap$org$eclipse$jetty$servlet$Holder$Source:[I

    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->DESCRIPTOR:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/Holder$Source;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$1;->$SwitchMap$org$eclipse$jetty$servlet$Holder$Source:[I

    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->ANNOTATION:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/Holder$Source;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
