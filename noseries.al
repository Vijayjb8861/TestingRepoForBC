// // ======================
// // My Custom Table with No. Series
// // ======================
// table 50121 "My Custom Table"
// {
//     DataClassification = CustomerContent;

//     fields
//     {
//         field(1; "No."; Code[20])
//         {
//             DataClassification = CustomerContent;
//         }

//         field(2; Description; Text[100])
//         {
//             DataClassification = CustomerContent;
//         }

//         field(3; "No. Series"; Code[20])
//         {
//             DataClassification = SystemMetadata;
//             TableRelation = "No. Series";
//         }
//     }

//     keys
//     {
//         key(PK; "No.") { Clustered = true; }
//     }

//     trigger OnInsert()
//     var
//         MySetup: Record "My Custom Setup";
//         NoSeriesMgt: Codeunit "NoSeriesManagement";
//     begin
//         if "No." = '' then begin
//             MySetup.Get();
//             MySetup.TestField("MyTable Nos.");
//             NoSeriesMgt.InitSeries(MySetup."MyTable Nos.", xRec."No. Series", 0D, "No.", "No. Series");
//         end;
//     end;
// }

// // ======================
// // Setup Table
// // ======================
// table 50101 "My Custom Setup"
// {
//     DataClassification = SystemMetadata;

//     fields
//     {
//         field(1; "Primary Key"; Code[10])
//         {
//             DataClassification = SystemMetadata;
//         }

//         field(2; "MyTable Nos."; Code[20])
//         {
//             TableRelation = "No. Series";
//             DataClassification = SystemMetadata;
//         }
//     }

//     keys
//     {
//         key(PK; "Primary Key") { Clustered = true; }
//     }
// }

// // ======================
// // Setup Page
// // ======================
// page 50125 "My Custom Setup Page"
// {
//     PageType = Card;
//     SourceTable = "My Custom Setup";
//     ApplicationArea = All;
//     UsageCategory = Administration;

//     layout
//     {
//         area(content)
//         {
//             group(General)
//             {
//                 field("MyTable Nos."; Rec."MyTable Nos.")
//                 {
//                     ApplicationArea = All;
//                 }
//             }
//         }
//     }
// }

// // ======================
// // Installer Codeunit
// // ======================
// codeunit 50102 "My Custom Setup Installer"
// {
//     Subtype = Install;

//     trigger OnInstallAppPerCompany()
//     var
//         Setup: Record "My Custom Setup";
//     begin
//         if not Setup.Get() then begin
//             Setup.Init();
//             Setup."Primary Key" := 'SETUP';
//             Setup.Insert();
//         end;
//     end;
// }

// // ======================
// // List Page for Custom Table
// // ======================
// page 50127 "My Custom Table List"
// {
//     PageType = List;
//     SourceTable = "My Custom Table";
//     ApplicationArea = All;

//     layout
//     {
//         area(content)
//         {
//             repeater(General)
//             {
//                 field("No."; Rec."No.") { ApplicationArea = All; }
//                 field(Description; Rec.Description) { ApplicationArea = All; }
//             }
//         }
//     }
// }
