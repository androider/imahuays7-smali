.class Lorg/eclipse/jetty/util/IO$ClosedIS;
.super Ljava/io/InputStream;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClosedIS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/IO$1;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Lorg/eclipse/jetty/util/IO$ClosedIS;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    return v0
.end method
