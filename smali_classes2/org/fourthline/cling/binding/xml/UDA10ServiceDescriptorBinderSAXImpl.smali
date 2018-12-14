.class public Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;
.super Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;
.source "UDA10ServiceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;,
        Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueRangeHandler;,
        Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueListHandler;,
        Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;,
        Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;,
        Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;,
        Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentListHandler;,
        Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionHandler;,
        Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionListHandler;,
        Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$RootHandler;
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderImpl;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 48
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public describe(Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Service;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/fourthline/cling/model/meta/Service;",
            ">(TS;",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;,
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Reading service from XML descriptor"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lorg/seamless/xml/SAXParser;

    invoke-direct {v0}, Lorg/seamless/xml/SAXParser;-><init>()V

    .line 64
    new-instance v1, Lorg/fourthline/cling/binding/staging/MutableService;

    invoke-direct {v1}, Lorg/fourthline/cling/binding/staging/MutableService;-><init>()V

    .line 66
    invoke-virtual {p0, v1, p1}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;->hydrateBasic(Lorg/fourthline/cling/binding/staging/MutableService;Lorg/fourthline/cling/model/meta/Service;)V

    .line 68
    new-instance v2, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$RootHandler;

    invoke-direct {v2, v1, v0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$RootHandler;-><init>(Lorg/fourthline/cling/binding/staging/MutableService;Lorg/seamless/xml/SAXParser;)V

    .line 70
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 70
    invoke-virtual {v0, v2}, Lorg/seamless/xml/SAXParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 78
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/binding/staging/MutableService;->build(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1
    :try_end_0
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 83
    new-instance p2, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse service descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 81
    throw p1

    .line 56
    :cond_1
    :goto_0
    new-instance p1, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;

    const-string p2, "Null or empty descriptor"

    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
