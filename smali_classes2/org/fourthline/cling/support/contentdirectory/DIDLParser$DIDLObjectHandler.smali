.class public abstract Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
.super Lorg/seamless/xml/SAXParser$Handler;
.source "DIDLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DIDLObjectHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/fourthline/cling/support/model/DIDLObject;",
        ">",
        "Lorg/seamless/xml/SAXParser$Handler<",
        "TI;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DIDLObject;Lorg/seamless/xml/SAXParser$Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/seamless/xml/SAXParser$Handler;",
            ")V"
        }
    .end annotation

    .line 639
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    .line 640
    invoke-direct {p0, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser$Handler;)V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 645
    invoke-super {p0, p1, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "http://purl.org/dc/elements/1.1/"

    .line 647
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    const-string p1, "title"

    .line 649
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 650
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->setTitle(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_0
    const-string p1, "creator"

    .line 651
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 652
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->setCreator(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_1
    const-string p1, "description"

    .line 653
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 654
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_2
    const-string p1, "publisher"

    .line 655
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 656
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    new-instance p3, Lorg/fourthline/cling/support/model/Person;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_3
    const-string p1, "contributor"

    .line 657
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 658
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    new-instance p3, Lorg/fourthline/cling/support/model/Person;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_4
    const-string p1, "date"

    .line 659
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 660
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_5
    const-string p1, "language"

    .line 661
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 662
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_6
    const-string p1, "rights"

    .line 663
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 664
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_7
    const-string p1, "relation"

    .line 665
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 666
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;-><init>(Ljava/net/URI;)V

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_8
    const-string p3, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 669
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "writeStatus"

    .line 671
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 673
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 674
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/fourthline/cling/support/model/WriteStatus;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/WriteStatus;

    move-result-object p2

    .line 673
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->setWriteStatus(Lorg/fourthline/cling/support/model/WriteStatus;)Lorg/fourthline/cling/support/model/DIDLObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 677
    :catch_0
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring invalid writeStatus value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string p1, "class"

    .line 679
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 680
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 682
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    .line 683
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_a
    const-string p1, "artist"

    .line 686
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 687
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    new-instance p3, Lorg/fourthline/cling/support/model/PersonWithRole;

    .line 689
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v1

    const-string v2, "role"

    invoke-interface {v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lorg/fourthline/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    .line 687
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_b
    const-string p1, "actor"

    .line 692
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 693
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    new-instance p3, Lorg/fourthline/cling/support/model/PersonWithRole;

    .line 695
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v1

    const-string v2, "role"

    invoke-interface {v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lorg/fourthline/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    .line 693
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_c
    const-string p1, "author"

    .line 698
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 699
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;

    new-instance p3, Lorg/fourthline/cling/support/model/PersonWithRole;

    .line 701
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v1

    const-string v2, "role"

    invoke-interface {v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lorg/fourthline/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    .line 699
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_d
    const-string p1, "producer"

    .line 704
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 705
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    new-instance p3, Lorg/fourthline/cling/support/model/Person;

    .line 706
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    .line 705
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_e
    const-string p1, "director"

    .line 708
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 709
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    new-instance p3, Lorg/fourthline/cling/support/model/Person;

    .line 710
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    .line 709
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_f
    const-string p1, "longDescription"

    .line 712
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 713
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    .line 714
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_10
    const-string p1, "storageUsed"

    .line 716
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 717
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    .line 718
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;-><init>(Ljava/lang/Long;)V

    .line 717
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_11
    const-string p1, "storageTotal"

    .line 720
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 721
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;

    .line 722
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;-><init>(Ljava/lang/Long;)V

    .line 721
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_12
    const-string p1, "storageFree"

    .line 724
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 725
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;

    .line 726
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;-><init>(Ljava/lang/Long;)V

    .line 725
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_13
    const-string p1, "storageMaxPartition"

    .line 728
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 729
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;

    .line 730
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;-><init>(Ljava/lang/Long;)V

    .line 729
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_14
    const-string p1, "storageMedium"

    .line 732
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 733
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    .line 734
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    .line 733
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_15
    const-string p1, "genre"

    .line 736
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 737
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    .line 738
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_16
    const-string p1, "album"

    .line 740
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 741
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    .line 742
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_17
    const-string p1, "playlist"

    .line 744
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 745
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    .line 746
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_18
    const-string p1, "region"

    .line 748
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 749
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$REGION;

    .line 750
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$REGION;-><init>(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_19
    const-string p1, "rating"

    .line 752
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 753
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RATING;

    .line 754
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RATING;-><init>(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_1a
    const-string p1, "toc"

    .line 756
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 757
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$TOC;

    .line 758
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$TOC;-><init>(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_1b
    const-string p1, "albumArtURI"

    .line 760
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 761
    new-instance p1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;-><init>(Ljava/net/URI;)V

    .line 763
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object p2

    const/4 p3, 0x0

    .line 764
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge p3, v0, :cond_1d

    const-string v0, "profileID"

    .line 765
    invoke-interface {p2, p3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 766
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;

    new-instance v1, Lorg/fourthline/cling/support/model/DIDLAttribute;

    const-string v2, "urn:schemas-dlna-org:metadata-1-0/"

    const-string v3, "dlna"

    .line 771
    invoke-interface {p2, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/DIDLAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;-><init>(Lorg/fourthline/cling/support/model/DIDLAttribute;)V

    .line 766
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->addAttribute(Lorg/fourthline/cling/support/model/DIDLObject$Property;)V

    :cond_1c
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 776
    :cond_1d
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fourthline/cling/support/model/DIDLObject;

    invoke-virtual {p2, p1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_1e
    const-string p1, "artistDiscographyURI"

    .line 777
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 778
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;

    .line 779
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;-><init>(Ljava/net/URI;)V

    .line 778
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_1f
    const-string p1, "lyricsURI"

    .line 781
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 782
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LYRICS_URI;

    .line 783
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LYRICS_URI;-><init>(Ljava/net/URI;)V

    .line 782
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_20
    const-string p1, "icon"

    .line 785
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 786
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ICON;

    .line 787
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ICON;-><init>(Ljava/net/URI;)V

    .line 786
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_21
    const-string p1, "radioCallSign"

    .line 789
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 790
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;

    .line 791
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;-><init>(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_22
    const-string p1, "radioStationID"

    .line 793
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 794
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;

    .line 795
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;-><init>(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_23
    const-string p1, "radioBand"

    .line 797
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 798
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;

    .line 799
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;-><init>(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_24
    const-string p1, "channelNr"

    .line 801
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 802
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    .line 803
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;-><init>(Ljava/lang/Integer;)V

    .line 802
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_25
    const-string p1, "channelName"

    .line 805
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 806
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;

    .line 807
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;-><init>(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_26
    const-string p1, "scheduledStartTime"

    .line 809
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 810
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    .line 811
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;-><init>(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto/16 :goto_1

    :cond_27
    const-string p1, "scheduledEndTime"

    .line 813
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 814
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    .line 815
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;-><init>(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto :goto_1

    :cond_28
    const-string p1, "DVDRegionCode"

    .line 817
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 818
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;

    .line 819
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;-><init>(Ljava/lang/Integer;)V

    .line 818
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto :goto_1

    :cond_29
    const-string p1, "originalTrackNumber"

    .line 821
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 822
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;

    .line 823
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;-><init>(Ljava/lang/Integer;)V

    .line 822
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto :goto_1

    :cond_2a
    const-string p1, "userAnnotation"

    .line 825
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 826
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$USER_ANNOTATION;

    .line 827
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->getCharacters()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$USER_ANNOTATION;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    :cond_2b
    :goto_1
    return-void
.end method
