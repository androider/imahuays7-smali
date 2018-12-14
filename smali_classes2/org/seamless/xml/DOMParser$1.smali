.class Lorg/seamless/xml/DOMParser$1;
.super Ljava/util/HashMap;
.source "DOMParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/xml/DOMParser;->getSchema()Ljavax/xml/validation/Schema;
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
.field final synthetic this$0:Lorg/seamless/xml/DOMParser;


# direct methods
.method constructor <init>(Lorg/seamless/xml/DOMParser;)V
    .locals 1

    .line 99
    iput-object p1, p0, Lorg/seamless/xml/DOMParser$1;->this$0:Lorg/seamless/xml/DOMParser;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 100
    sget-object p1, Lorg/seamless/xml/DOM;->XML_SCHEMA_NAMESPACE:Ljava/net/URI;

    sget-object v0, Lorg/seamless/xml/DOMParser;->XML_SCHEMA_RESOURCE:Ljava/net/URL;

    invoke-virtual {p0, p1, v0}, Lorg/seamless/xml/DOMParser$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
