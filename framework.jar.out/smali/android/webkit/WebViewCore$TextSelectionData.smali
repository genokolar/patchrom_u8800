.class Landroid/webkit/WebViewCore$TextSelectionData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextSelectionData"
.end annotation


# instance fields
.field mEnd:I

.field mStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput p1, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    .line 855
    iput p2, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    .line 856
    return-void
.end method
