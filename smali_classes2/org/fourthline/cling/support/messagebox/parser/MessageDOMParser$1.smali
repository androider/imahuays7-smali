.class Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser$1;
.super Lorg/seamless/xml/NamespaceContextMap;
.source "MessageDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;->createDefaultNamespaceContext([Ljava/lang/String;)Lorg/seamless/xml/NamespaceContextMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser$1;->this$0:Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;

    invoke-direct {p0}, Lorg/seamless/xml/NamespaceContextMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultNamespaceURI()Ljava/lang/String;
    .locals 1

    const-string v0, "urn:samsung-com:messagebox-1-0"

    return-object v0
.end method
