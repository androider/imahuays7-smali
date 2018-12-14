.class public Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportLastChangeParser;
.super Lorg/fourthline/cling/support/lastchange/LastChangeParser;
.source "AVTransportLastChangeParser.java"


# static fields
.field public static final NAMESPACE_URI:Ljava/lang/String; = "urn:schemas-upnp-org:metadata-1-0/AVT/"

.field public static final SCHEMA_RESOURCE:Ljava/lang/String; = "org/fourthline/cling/support/avtransport/metadata-1.01-avt.xsd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEventedVariables()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/lastchange/EventedValue;",
            ">;>;"
        }
    .end annotation

    .line 53
    sget-object v0, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable;->ALL:Ljava/util/Set;

    return-object v0
.end method

.method protected getNamespace()Ljava/lang/String;
    .locals 1

    const-string v0, "urn:schemas-upnp-org:metadata-1-0/AVT/"

    return-object v0
.end method

.method protected getSchemaSources()[Ljavax/xml/transform/Source;
    .locals 5

    .line 43
    sget-boolean v0, Lorg/fourthline/cling/model/ModelUtil;->ANDROID_RUNTIME:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 44
    new-array v0, v0, [Ljavax/xml/transform/Source;

    const/4 v1, 0x0

    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "org/fourthline/cling/support/avtransport/metadata-1.01-avt.xsd"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
