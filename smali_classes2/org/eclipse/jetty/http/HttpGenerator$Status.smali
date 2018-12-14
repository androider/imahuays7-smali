.class Lorg/eclipse/jetty/http/HttpGenerator$Status;
.super Ljava/lang/Object;
.source "HttpGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Status"
.end annotation


# instance fields
.field _reason:Lorg/eclipse/jetty/io/Buffer;

.field _responseLine:Lorg/eclipse/jetty/io/Buffer;

.field _schemeCode:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/http/HttpGenerator$1;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator$Status;-><init>()V

    return-void
.end method
