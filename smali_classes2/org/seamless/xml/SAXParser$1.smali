.class Lorg/seamless/xml/SAXParser$1;
.super Ljava/util/HashMap;
.source "SAXParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/xml/SAXParser;->createSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/net/URI;",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/xml/SAXParser;


# direct methods
.method constructor <init>(Lorg/seamless/xml/SAXParser;)V
    .locals 1

    .line 87
    iput-object p1, p0, Lorg/seamless/xml/SAXParser$1;->this$0:Lorg/seamless/xml/SAXParser;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 88
    sget-object p1, Lorg/seamless/xml/SAXParser;->XML_SCHEMA_NAMESPACE:Ljava/net/URI;

    sget-object v0, Lorg/seamless/xml/SAXParser;->XML_SCHEMA_RESOURCE:Ljava/net/URL;

    invoke-virtual {p0, p1, v0}, Lorg/seamless/xml/SAXParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
