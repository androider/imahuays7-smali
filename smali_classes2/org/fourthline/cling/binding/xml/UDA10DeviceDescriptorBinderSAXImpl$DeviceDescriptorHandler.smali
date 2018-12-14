.class public Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;
.super Lorg/seamless/xml/SAXParser$Handler;
.source "UDA10DeviceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DeviceDescriptorHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/seamless/xml/SAXParser$Handler<",
        "TI;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 421
    invoke-direct {p0, p1}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;",
            ")V"
        }
    .end annotation

    .line 429
    invoke-direct {p0, p1, p2}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser$Handler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/seamless/xml/SAXParser;",
            ")V"
        }
    .end annotation

    .line 425
    invoke-direct {p0, p1, p2}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/seamless/xml/SAXParser;",
            "Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;",
            ")V"
        }
    .end annotation

    .line 433
    invoke-direct {p0, p1, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser;Lorg/seamless/xml/SAXParser$Handler;)V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 446
    invoke-super {p0, p1, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-static {p2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->valueOrNullOf(Ljava/lang/String;)Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;->endElement(Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;)V

    return-void
.end method

.method public endElement(Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method protected isLastElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 454
    invoke-static {p2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->valueOrNullOf(Ljava/lang/String;)Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 455
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;->isLastElement(Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLastElement(Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 438
    invoke-super {p0, p1, p2, p3, p4}, Lorg/seamless/xml/SAXParser$Handler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 439
    invoke-static {p2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->valueOrNullOf(Ljava/lang/String;)Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 441
    :cond_0
    invoke-virtual {p0, p1, p4}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;->startElement(Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startElement(Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
