.class public Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;
.super Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;
.source "UDA10DeviceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DeviceHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler<",
        "Lorg/fourthline/cling/binding/staging/MutableDevice;",
        ">;"
    }
.end annotation


# static fields
.field public static final EL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    sput-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/binding/staging/MutableDevice;Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    return-void
.end method


# virtual methods
.method public endElement(Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 196
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$1;->$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Device$ELEMENT:[I

    invoke-virtual {p1}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 242
    :pswitch_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/model/types/DLNACaps;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/DLNACaps;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->dlnaCaps:Lorg/fourthline/cling/model/types/DLNACaps;

    goto/16 :goto_0

    .line 234
    :pswitch_1
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object p1

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/staging/MutableDevice;

    iget-object v0, v0, Lorg/fourthline/cling/binding/staging/MutableDevice;->dlnaDocs:Ljava/util/List;

    invoke-static {p1}, Lorg/fourthline/cling/model/types/DLNADoc;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/DLNADoc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 238
    :catch_0
    invoke-static {}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid X_DLNADOC value, ignoring value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :pswitch_2
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/model/types/UDN;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->udn:Lorg/fourthline/cling/model/types/UDN;

    goto/16 :goto_0

    .line 228
    :pswitch_3
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->serialNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 225
    :pswitch_4
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->upc:Ljava/lang/String;

    goto/16 :goto_0

    .line 222
    :pswitch_5
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->presentationURI:Ljava/net/URI;

    goto/16 :goto_0

    .line 219
    :pswitch_6
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelURI:Ljava/net/URI;

    goto :goto_0

    .line 216
    :pswitch_7
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelNumber:Ljava/lang/String;

    goto :goto_0

    .line 213
    :pswitch_8
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelName:Ljava/lang/String;

    goto :goto_0

    .line 210
    :pswitch_9
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelDescription:Ljava/lang/String;

    goto :goto_0

    .line 207
    :pswitch_a
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->manufacturerURI:Ljava/net/URI;

    goto :goto_0

    .line 204
    :pswitch_b
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->manufacturer:Ljava/lang/String;

    goto :goto_0

    .line 201
    :pswitch_c
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->friendlyName:Ljava/lang/String;

    goto :goto_0

    .line 198
    :pswitch_d
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/fourthline/cling/binding/staging/MutableDevice;->deviceType:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isLastElement(Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;)Z
    .locals 1

    .line 249
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public startElement(Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 175
    sget-object p2, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 176
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/staging/MutableDevice;

    iput-object p2, v0, Lorg/fourthline/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    .line 178
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;

    invoke-direct {v0, p2, p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;-><init>(Ljava/util/List;Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    .line 181
    :cond_0
    sget-object p2, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceListHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 182
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/binding/staging/MutableDevice;

    iput-object p2, v0, Lorg/fourthline/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    .line 184
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceListHandler;

    invoke-direct {v0, p2, p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceListHandler;-><init>(Ljava/util/List;Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    .line 187
    :cond_1
    sget-object p2, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceListHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 188
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/binding/staging/MutableDevice;

    iput-object p1, p2, Lorg/fourthline/cling/binding/staging/MutableDevice;->embeddedDevices:Ljava/util/List;

    .line 190
    new-instance p2, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceListHandler;

    invoke-direct {p2, p1, p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceListHandler;-><init>(Ljava/util/List;Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    :cond_2
    return-void
.end method
