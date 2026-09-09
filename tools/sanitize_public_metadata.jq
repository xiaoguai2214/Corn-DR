def sanitize_string:
  gsub("/mnt/RepViT-main/CornRestoreX2_FINAL_UNIFIED_20260726/"; "")
  | gsub("/mnt/RepViT-main/CornRestoreX2_FINAL_UNIFIED_20260726"; ".")
  | gsub("E:\\\\model\\\\yolov11\\\\datasets\\\\Corn_8_yuan\\\\"; "");

walk(
  if type == "object" then
    del(.source_path, .parent_v1_json)
  elif type == "string" then
    sanitize_string
  else
    .
  end
)
