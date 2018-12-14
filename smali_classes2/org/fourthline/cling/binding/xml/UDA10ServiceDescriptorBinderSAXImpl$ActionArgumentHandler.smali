.class public Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;
.super Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;
.source "UDA10ServiceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ActionArgumentHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<",
        "Lorg/fourthline/cling/binding/staging/MutableActionArgument;",
        ">;"
    }
.end annotation


# static fields
.field public static final EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 227
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->argument:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    sput-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/binding/staging/MutableActionArgument;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    return-void
.end method


# virtual methods
.method public endElement(Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 235
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$1;->$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Service$ELEMENT:[I

    invoke-virtual {p1}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 253
    :pswitch_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;->retval:Z

    goto :goto_0

    .line 250
    :pswitch_1
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;->relatedStateVariable:Ljava/lang/String;

    goto :goto_0

    .line 240
    :pswitch_2
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;->getCharacters()Ljava/lang/String;

    move-result-object p1

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/staging/MutableActionArgument;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    move-result-object v1

    iput-object v1, v0, Lorg/fourthline/cling/binding/staging/MutableActionArgument;->direction:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    invoke-static {}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPnP specification violation: Invalid action argument direction, assuming \'IN\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;

    sget-object v0, Lorg/fourthline/cling/model/meta/ActionArgument$Direction;->IN:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;->direction:Lorg/fourthline/cling/model/meta/ActionArgument$Direction;

    goto :goto_0

    .line 237
    :pswitch_3
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableActionArgument;->name:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isLastElement(Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;)Z
    .locals 1

    .line 260
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ActionArgumentHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Service$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
