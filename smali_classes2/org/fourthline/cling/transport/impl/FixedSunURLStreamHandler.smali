.class public Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler;
.super Ljava/lang/Object;
.source "FixedSunURLStreamHandler.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$UpnpURLConnection;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 3

    .line 46
    sget-object v0, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new URLStreamHandler for protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-string v0, "http"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    new-instance p1, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$1;

    invoke-direct {p1, p0}, Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler$1;-><init>(Lorg/fourthline/cling/transport/impl/FixedSunURLStreamHandler;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
