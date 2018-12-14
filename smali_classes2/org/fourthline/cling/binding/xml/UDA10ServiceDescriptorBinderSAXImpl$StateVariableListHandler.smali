.class public Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;
.super Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;
.source "UDA10ServiceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StateVariableListHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<",
        "Ljava/util/List<",
        "Lorg/fourthline/cling/binding/staging/MutableStateVariable;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 266
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->serviceStateTable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    sput-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/binding/staging/MutableStateVariable;",
            ">;",
            "Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;",
            ")V"
        }
    .end annotation

    .line 269
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    return-void
.end method


# virtual methods
.method public isLastElement(Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;)Z
    .locals 1

    .line 289
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public startElement(Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 274
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 275
    new-instance p1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    invoke-direct {p1}, Lorg/fourthline/cling/binding/staging/MutableStateVariable;-><init>()V

    .line 277
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->sendEvents:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;

    invoke-virtual {v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ATTRIBUTE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 278
    new-instance v0, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    if-eqz p2, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 279
    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "YES"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {v0, p2}, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;-><init>(Z)V

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->eventDetails:Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    .line 282
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableListHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance p2, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;

    invoke-direct {p2, p1, p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;-><init>(Lorg/fourthline/cling/binding/staging/MutableStateVariable;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    :cond_1
    return-void
.end method
