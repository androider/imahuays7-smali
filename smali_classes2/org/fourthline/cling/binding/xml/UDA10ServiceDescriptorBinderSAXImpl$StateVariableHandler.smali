.class public Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;
.super Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;
.source "UDA10ServiceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StateVariableHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<",
        "Lorg/fourthline/cling/binding/staging/MutableStateVariable;",
        ">;"
    }
.end annotation


# static fields
.field public static final EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 295
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    sput-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/binding/staging/MutableStateVariable;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V
    .locals 0

    .line 298
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    return-void
.end method


# virtual methods
.method public endElement(Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 318
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$1;->$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT:[I

    invoke-virtual {p1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 328
    :pswitch_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->defaultValue:Ljava/lang/String;

    goto :goto_1

    .line 323
    :pswitch_1
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getCharacters()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-static {p1}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getByDescriptorName(Ljava/lang/String;)Lorg/fourthline/cling/model/types/Datatype$Builtin;

    move-result-object v0

    .line 325
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/types/CustomDatatype;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/types/CustomDatatype;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    iput-object p1, v1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->dataType:Lorg/fourthline/cling/model/types/Datatype;

    goto :goto_1

    .line 320
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->name:Ljava/lang/String;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isLastElement(Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;)Z
    .locals 1

    .line 335
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public startElement(Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 303
    sget-object p2, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueListHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 304
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    iput-object p2, v0, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValues:Ljava/util/List;

    .line 306
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueListHandler;

    invoke-direct {v0, p2, p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueListHandler;-><init>(Ljava/util/List;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    .line 309
    :cond_0
    sget-object p2, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueRangeHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 310
    new-instance p1, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;

    invoke-direct {p1}, Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;-><init>()V

    .line 311
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    iput-object p1, p2, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->allowedValueRange:Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;

    .line 312
    new-instance p2, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueRangeHandler;

    invoke-direct {p2, p1, p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueRangeHandler;-><init>(Lorg/fourthline/cling/binding/staging/MutableAllowedValueRange;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    :cond_1
    return-void
.end method
