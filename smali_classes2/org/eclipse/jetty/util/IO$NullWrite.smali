.class Lorg/eclipse/jetty/util/IO$NullWrite;
.super Ljava/io/Writer;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullWrite"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 509
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/IO$1;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Lorg/eclipse/jetty/util/IO$NullWrite;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 0

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public write([C)V
    .locals 0

    return-void
.end method

.method public write([CII)V
    .locals 0

    return-void
.end method
